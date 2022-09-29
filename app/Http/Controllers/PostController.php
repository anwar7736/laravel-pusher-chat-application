<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\Subcategory;
use App\Models\Post;
use App\Events\PostPublishedEvent;
use DB;

class PostController extends Controller
{
    public function __construct()
    {
        return $this->middleware('auth');
    }
    public function index()
    { 
       $posts  = Post::with('categories', 'subcategories', 'users', 'likes')->orderBy('id', 'desc')->simplePaginate(10);

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
}
