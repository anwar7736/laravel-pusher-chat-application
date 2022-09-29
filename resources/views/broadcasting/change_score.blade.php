@extends('layouts.app')
@section('content')
    <div class="container row">
            <div class="col-sm-3 offset-3">
            <h2>Change Score</h2>
            <input type="number" min="0" class="form-control" id="score"><br>
            <button class="btn btn-success updateScoreBtn">Update</button>
            </div>
    </div>
@endsection
@push('scripts')
    <script>
        $(document).ready(function(){
            $('.updateScoreBtn').on('click', function(){
                let value = $('#score').val();
                if(value == '')
                {
                    alert("Score is required!");
                }
                else {
                    axios.post('change_score', {value:value})
                    .then(res=>{
                        $("#score").val('');
                    })
                    .catch(err=>{
                        
                    });

                   
                }
            })
        });
    </script>
@endpush