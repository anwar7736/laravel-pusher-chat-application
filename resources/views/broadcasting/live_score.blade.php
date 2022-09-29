@extends('layouts.app')
@section('content')
    <div class="container row">
            <div class="col-sm-3 offset-3">
            <h2>Live Score</h2>
            <div id="result"></div>
            </div>
    </div>
@endsection
@push('scripts')
    <script>
        $(document).ready(function(){
            //pusher credentials
            let pusher = new Pusher("29fbfa247e1c958ab56b", {
            cluster: "ap2",
            });

            //channel subscription
            let channel = pusher.subscribe(`live-score.1`);

            //get channel response
            channel.bind("my-score", (data) => {
               $('#result').html(`<div class="alert alert-success">${data.value} score has been updated!</div>`);
               setTimeout(()=>{
                    $('#result').html('');
               },3000);
            });

        });
    </script>
@endpush