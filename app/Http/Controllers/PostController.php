<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\Subcategory;
use App\Models\Post;
use App\Models\Like;
use App\Models\Comment;
use App\Events\PostPublishedEvent;
use App\Events\NotificationEvent;
use Cache, DB, Auth;

class PostController extends Controller
{
    public function __construct()
    {
        return $this->middleware('auth');
    }
    public function index()
    { 

        
    
        $posts = Post::with('categories', 'subcategories', 'users', 'likes', 'comments')->orderBy('id', 'desc')->simplePaginate(10);

        return view('posts.index', compact('posts'));
    }

    public function create()
    {
        $categories = DB::table('categories')
                    ->join('subcategories', 'categories.id', 'subcategories.category_id')
                    ->select('categories.*')
                    ->orderBy('categories.category_name')
                    ->distinct()
                    ->get();
        return view('posts.create', ['categories' => $categories]);
    }

    public function subcategory_by_category_id($category_id)
    {
        return response()->json(Subcategory::where('category_id', $category_id)->get());

    }

    public function PublishNewPost(Request $req)
    {
        $data = [];

        if($req->hasFile('cover_photo'))
        {
            $cover_photo = $req->file('cover_photo');
            $photo_new_name = rand().".".$cover_photo->getClientOriginalExtension();
            $cover_photo->move('images', $photo_new_name);
            $data['post_cover_photo'] = $photo_new_name;
        }

        $data['user_id'] = auth()->id();
        $data['category_id'] = $req->category;
        $data['subcategory_id'] = $req->subcategory;
        $data['post_title'] = $req->post_title;
        $data['post_description'] = $req->post_description;
        
        Post::create($data);
        event(new PostPublishedEvent($data));

        return back()->with(['success' => 'New post has been published now!']);
    }

    public function addLike($post_id)
    {
        Like::updateOrCreate([
            'post_id' => $post_id,
            'user_id' => Auth::id(),
        ],
        ['post_id' => $post_id, 'user_id' => Auth::id(), 'is_like' => 1, 'is_unlike' => 0]);

        event(new NotificationEvent(Post::whereId($post_id)->pluck('user_id')->first(), Auth::user()->name.' and '.($this->total_likes($post_id)-1).' others people like your post!'));

        return response()->json(['total_like' => $this->total_likes($post_id), 'total_unlike' => $this->total_unlikes($post_id)]);
    } 
    
    public function addUnlike($post_id)
    {
        Like::updateOrCreate([
            'post_id' => $post_id,
            'user_id' => Auth::id(),
        ],
        [ 'post_id' => $post_id, 'user_id' => Auth::id(), 'is_like' => 0, 'is_unlike' => 1]);

        event(new NotificationEvent(Post::whereId($post_id)->pluck('user_id')->first(), Auth::user()->name.' and '.($this->total_unlikes($post_id)-1).' others people unlike your post!'));

        return response()->json(['total_unlike' => $this->total_unlikes($post_id), 'total_like' => $this->total_likes($post_id)]);
    }

    public function addComment(Request $req)
    {
        $data = [];
        $data['post_id'] = $req->post_id;
        $data['user_id'] = Auth::id();
        $data['comments'] = $req->comment;
        $user_id = Post::whereId($data['post_id'])->pluck('user_id')->first();

        Comment::create($data);

        event(new NotificationEvent($user_id, Auth::user()->name.' and '.($this->total_comments($data['post_id'])-1).' others people comment your post!', $data['comments']));

    }

    public function total_likes($post_id)
    {
        return Like::where(['post_id' => $post_id, 'is_like' => 1, 'is_unlike' => 0])->count();
    }
    
    public function total_unlikes($post_id)
    {
        return Like::where(['post_id' => $post_id, 'is_unlike' => 1, 'is_like' => 0])->count();
    } 
    
    public function total_comments($post_id)
    {
        return Comment::where(['post_id' => $post_id])->count();
    }
}
