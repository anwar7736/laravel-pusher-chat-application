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
                                                    <div class="col-md-1">
                                                    
                                                            <span id="total_like" ><strong >{{\App\Models\Like::where(['post_id' => $post->id, 'is_like' => 1])->count() }}</strong></span><br>
                                                    
                                                                
                                                            <img class="like" id="{{$post->id}}" style="cursor:pointer" src="{{asset('images/like.png')}}" @if(\App\Models\Like::where(['post_id' => $post->id, 'user_id' => Auth::id(), 'is_like' => 1])->first()) height="30" width="30" @else height = "20" width="20" @endif/>

                                                    </div>
                                                    <div class="col-md-1">
                                                            <span id="total_unlike" ><strong  class="mr-2">{{\App\Models\Like::where(['post_id' => $post->id, 'is_unlike' => 1])->count() }}</strong></span><br>
                                                    
                                                    <img class="unlike" id="{{$post->id}}" style="cursor:pointer" src="{{asset('images/unlike.png')}}" @if(\App\Models\Like::where(['post_id' => $post->id, 'user_id' => Auth::id(), 'is_unlike' => 1])->first()) height="30" width="30" @else height = "20" width="20" @endif/>     
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div>
                                                            <span id="total_comment"><strong>{{$post->comments->count()}}</strong></span> comments
                                                        </div>
                                                            <label class="add_comment" for="" style="cursor:pointer"> 
                                                            <img src="{{asset('images/comments.png')}}" @if(\App\Models\Comment::where(['post_id' => $post->id, 'user_id' => Auth::id()])->first()) height="30" width="30" @else height = "20" width="20" @endif/> 
                                                        
                                                        </label>
                                                    </div>
                                                </div><br>
                                                <div class="row commentSection">
                                                    <div class="col-md-8">
                                                        <h5>Add your comment</h5>
                                                        
                                                        <div class="form-group mt-2">
                                                            <textarea rows="1" name="comment" id="comment" placeholder="Write something..." class="form-control"></textarea>
                                                        </div> 
                                                      
                                                    </div>
                                                    <div class="col-md-1">
                                                        <div class="form-group" style="margin-top:32px">
                                                        <input type="hidden" id="post_id" value="{{$post->id}}" name="post_id">
                                                            <button class="btn btn-success sendComment" id="{{$post->id}}" >Send</button>
                                                        </div>
                                                    </div>
                                         
                                                <div class="row">
                                                <small><strong>{{$post->comments->count()}}</strong></span> comments</small><hr>
                                                    <div class="all_comments">
                                                        @php 
                                                            $comments_list = \App\Models\Comment::where('post_id', $post->id)->orderBy('id', 'desc')->get()
                                                        @endphp
                                                        @foreach($comments_list as $comment)
                                                            <div class="col-md-12" style="">
                                                                @if(isset($comment->users->profile_photo) && file_exists('/images/'.$comment->users->profile_photo))
                                                                    <img src="{{asset('images/'.$comment->users->profile_photo)}}" alt="" height="20" width="20" style="border-radius:50%">
                                                                @else 
                                                                    <img src="{{asset('images/avatar.png')}}" alt="" height="20" width="20" style="border-radius:50%">
                                                                @endif
                                                                <strong>{{$comment->users->name}}</strong> |
                                                                <small>{{$comment->created_at->diffForHumans()}}</small><br>
                                                                <small>{{$comment->comments}}</small>
                                                            </div><hr>
                                                        @endforeach
                                                    </div>
                                                </div>
                                        </div>
                                        <div class="card-footer">
                                                <small>Published by {{$post->users->name}}</small>
                                                <small style="float:right">Published on {{$post->created_at->diffForHumans()}}</small>
                                        </div>
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
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });

            $(document).on("click", ".like", function(){
                let post_id = $(this).attr('id');
                let total_like = Number($(".total_like").text());
                let total_unlike = Number($(".total_unlike").text());
                axios.get('add_like/'+post_id)
                .then(res=>{
                    location.reload();
                })
                .catch(err=>{

                });

            });
            $(document).on("click", ".unlike", function(){
                let post_id = $(this).attr('id');
                axios.get('add_unlike/'+post_id)
                .then(res=>{                                      
                    location.reload();
                })
                .catch(err=>{

                });
            });

            $(document).on('click', '.add_comment', function(){
                $(".commentSection").fadeToggle();
            })

            $(document).on("click", ".sendComment", function(){
                let post_id = $(this).attr('id');
                let comment = $("#comment").val();
                if(comment == '')
                {
                    return false;
                }
                else {
                    $.ajax({
                        method : "post",
                        url : "{{route('send.comment')}}",
                        dataType : "json",
                        data : {post_id : post_id, comment : comment},
                        success : function(result)
                        {
                           
                        }
                    });
                }
            })

             //pusher credentials
             let pusher = new Pusher("29fbfa247e1c958ab56b", {
            cluster: "ap2",
            });

            //channel subscription
            let channel = pusher.subscribe('post-published');
            
            //like, unlike, comments notification
            let channel2 = pusher.subscribe('post-status');
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
                                                <div class="${result.image_status}">
                                                    <img src="images/${result.data['post_cover_photo']}" class="card-img" height="350">
                                                </div>
                                                <p>${result.data['post_description']}</p>
                                                <div class="row">
                                                <div class="col-md-1">
                                                    <div>
                                                        <span id="total_like">0</span>
                                                    </div>
                                                        <label id="add_like" for="" style="cursor:pointer"> <img class="like" src="{{asset('images/like.png')}}" height="20" width="20"/> Like</label>
                                            </div>
                                            <div class="col-md-1">
                                                    <div>
                                                        <span id="total_like">0</span>
                                                    </div>
                                                        <label id="add_unlike" for="" style="cursor:pointer"> <img class="unlike" src="{{asset('images/unlike.png')}}" height="20" width="20"/> Like</label>
                                            </div>
                                            
                                                    <div class="col-md-3">
                                                    <div>
                                                        <span id="total_comment">0</span> comments
                                                    </div>
                                                        <label id="add_comment" for="" style="cursor:pointer"> <img class="unlike" src="{{asset('images/comments.png')}}" height="20" width="20"/> Comment</label>
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
            });

            channel2.bind('my-post', (e)=>{
                if(e.user_id == {{Auth::id()}})
                {
                    $(".result").html(`<div class='alert alert-success'><strong>${e.message}</strong></div>`);
                }
                $("#comment").val('');
                $(".all_comments").prepend(`
                                <div class="col-md-12" style="">
                                
                                    <img src="{{asset('images/avatar.png')}}" alt="" height="20" width="20" style="border-radius:50%">
                                    <strong>${e.name}</strong> |
                                    <small>1 seconds ago</small><br>
                                    <small>${e.comments}</small>
                                </div><hr>`);
            });

        });
    </script>
@endpush