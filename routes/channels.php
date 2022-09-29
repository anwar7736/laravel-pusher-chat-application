<?php

use Illuminate\Support\Facades\Broadcast;
use Illuminate\Support\Facades\Auth;


Broadcast::channel('post-published', function ($user_id) {
    return (int) $user_id !== (int) auth()->id();
});

Broadcast::channel('post-status', function ($user_id) {
    return (int) $user_id == (int) auth()->id();
});
 