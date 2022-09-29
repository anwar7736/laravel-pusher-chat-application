@extends('layouts.app')
@section('content')
    <div class="container">
        <div class="container table-responsive">
            <div class="row">
                <div class="col-md-8 offset-2">
                    <h2 class="text-center text-white">Publish New Post</h2>
                    @if(session()->has('success'))
                        <div class="alert alert-success">
                            <strong>{{Session::get('success')}}</strong>
                        </div>
                    @endif
                    <div align="right" class="mb-2">
                        <a href="{{url('home')}}" class="btn btn-info">View All Post</a>
                    </div>
                  
                    <div class="card p-4">
                        <div class="card-body">
                           <form action="{{ route('add_new.post') }}" method="POST" enctype="multipart/form-data">
                            @csrf

                           <div class="form-group">
                                    <label for="category">Choose Category</label>
                                    <select name="category" id="category" class="form-control" required>
                                        <option value="" disabled selected>Select Category</option>
                                        @foreach($categories as $category)
                                            <option value="{{$category->id}}">{{$category->category_name}}</option>
                                        @endforeach
                                    </select>
                                </div> 
                                <br>
                                <div class="form-group">
                                    <label for="subcategory">Choose Subcategory</label>
                                    <select name="subcategory" id="subcategory" class="form-control" required>
                                        <option value="" disabled selected>Select Subcategory</option>
                                    </select>
                                </div>
                                <br>
                                <div class="form-group">
                                    <label for="post_title">Post Title</label>
                                    <input type="text" id="post_title" name="post_title" class="form-control" required>
                                </div> 
                                <br>
                                <div class="form-group">
                                    <label for="post_description">Post Description</label>
                                    <textarea class="summernote" id="post_description" name="post_description" class="form-control" required></textarea>
                                </div>
                                <br>
                                <div class="form-group">
                                    <label for="cover_photo_confirm"><input type="checkbox" id="cover_photo_confirm" > Do you want to add cover photo?</label>
                                </div>
                                <br>
                                <div class="form-group cover_photo_section d-none">
                                    <label for="cover_photo">Choose Cover Photo</label><br>
                                     <input type="file" id="cover_photo" name="cover_photo" class="form-control" accept="image/*">
                                </div>
                           
                        </div>
                        <div class="card-footer">
                            <div class="form-group" align="center">
                                        <input type="submit" value="Publish" class="btn btn-success px-5">
                            </div>
                        </div>
                    </form>
                    <div>
                </div>
            </div>
        </div>
</div>
@endsection

@push('scripts')
    <script>
        $(document).ready(function(){
            $("#category").change(function(){
                let category_id = $(this).val();
                axios.get('subcategory_by_category_id/'+category_id)
                .then(res=>{
                    let options = "<option value='' disabled selected>Select Subcategory</option>";
                    res.data.map(data=>{
                        options += "<option value="+data.id+">"+data.subcategory_name+"</option>";
                    });
                    $("#subcategory").html(options);
                })
                .catch(err=>{

                });
            });

            $("#cover_photo_confirm").click(function(){
                if($(this).prop('checked') == true)
               {
                    $(".cover_photo_section").removeClass('d-none');
               }
               else 
               {
                    $(".cover_photo_section").addClass('d-none');
                    $("#cover_photo").val('');
               }
            });

            $('.summernote').summernote({
                height : 200,
            });
        });
    </script>
@endpush