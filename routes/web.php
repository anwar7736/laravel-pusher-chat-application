<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Http\Request;
use App\Events\NotificationEvent;
use App\Http\Controllers\PostController;

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

//Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');


Route::get('/change_score', function(){
    return view('broadcasting.change_score');
});

Route::post('change_score', function(Request $request){
    event(new NotificationEvent($request->value));
});

Route::get('/live_score', function(){
    return view('broadcasting.live_score');
});

//View post list
Route::get('/home', [PostController::class, 'index']);

//Add New Post
Route::get('add_new_post', [PostController::class, 'create']);

Route::get('subcategory_by_category_id/{category_id}', [PostController::class, 'subcategory_by_category_id']);

Route::post('add_new_post', [PostController::class, 'PublishNewPost'])->name('add_new.post');

//Add Like
Route::get('add_like/{post_id}', [PostController::class, 'addLike']);

//Add Unlike
Route::get('add_unlike/{post_id}', [PostController::class, 'addUnlike']);

//Add Comment
Route::post('add_comment', [PostController::class, 'addComment'])->name('send.comment');