@extends('layouts.app')
@section('content')
    <div class="container table-responsive">
        <div class="row">
            <div class="col-md-8 offset-2">
                <h2 class="text-center text-white">All Post List</h2>
                <div class="result">

                </div>
                <div align="right" class="mb-2">
                <a href="{{url('add_new_post')}}" class="btn btn-success">Add New Post</a>
                </div>
                <div id="all_posts">
                        @foreach($posts as $post)
                            <div class="card p-4">
                                        <div class="card-title">
                                                <h4>{{$post->categories->category_name}}</h4>
                                        </div>
                                        <div class="card-body">
                                                <h5>{{$post->post_title}}</h5>
                                                    @if($post->post_cover_photo)
                                                     <img src="{{asset('images/'.$post->post_cover_photo)}}" class="card-img" height="350">
                                                    @endif
                                                <p>{!!$post->post_description!!}</p>
                                                <div class="row">
                                                <div class="col-md-3">
                                                    <div>
                                                        <span id="total_like">{{$post->likes->count()}}</span> people like this
                                                    </div>
                                                        <label id="add_like" for="" style="cursor:pointer"> <img src="{{asset('images/like.png')}}" height="20" width="20"/> Like</label>
                                                    </div>
                                                    <div class="col-md-3">
                                                    <div>
                                                        <span id="total_comment">{{$post->comments->count()}}</span> comments
                                                    </div>
                                                        <label id="add_comment" for="" style="cursor:pointer"> <img src="{{asset('images/comments.png')}}" height="20" width="20"/> Comment</label>
                                                    </div>
                                                </div>
                                        </div>
                                        <div class="card-footer">
                                                <small>Created by {{$post->users->name}}</small>
                                                <small style="float:right">Published on {{$post->created_at->diffForHumans()}}</small>
                                        </div>
                                        </div>
                             <br>
                        @endforeach
                </div>
                  {{$posts->links()}}
            </div>

        </div>
    </div>
@endsection

@push('scripts')
    <script>
        $(document).ready(function(){
            $("#add_like").on("click", function(){
                let like_count = $("#total_like").text();
                     $("#total_like").text(Number(like_count) + 1);
            });

             //pusher credentials
             let pusher = new Pusher("29fbfa247e1c958ab56b", {
            cluster: "ap2",
            });

            //channel subscription
            let channel = pusher.subscribe('post-published');

            //get channel response
            channel.bind("post-published", (result) => {
               $('.result').html(`<div class="alert alert-success">${result.message}</div>`);

               $("#all_posts").prepend(`
               <div class="card p-4">
                                        <div class="card-title">
                                                <h4>${result.category_name}</h4>
                                        </div>
                                        <div class="card-body">
                                                <h5>${result.data['post_title']}</h5>
                                                    
                                                     <img src="images/${result.data['post_cover_photo']}" class="card-img" height="350">
                                                    
                                                <p>${result.data['post_description']}</p>
                                                <div class="row">
                                                <div class="col-md-3">
                                                    <div>
                                                        <span id="total_like">0</span> people like this
                                                    </div>
                                                        <label id="add_like" for="" style="cursor:pointer"> <img src="{{asset('images/like.png')}}" height="20" width="20"/> Like</label>
                                                    </div>
                                                    <div class="col-md-3">
                                                    <div>
                                                        <span id="total_comment">0</span> comments
                                                    </div>
                                                        <label id="add_comment" for="" style="cursor:pointer"> <img src="{{asset('images/comments.png')}}" height="20" width="20"/> Comment</label>
                                                    </div>
                                                </div>
                                        </div>
                                        <div class="card-footer">
                                                <small>Created by ${result.created_by}</small>
                                                <small style="float:right">Published on now</small>
                                        </div>
                                        </div>
                             <br>
               `);
               setTimeout(()=>{
                    $('.result').html('');
               },3000);
            });

        });
    </script>
@endpush