<?php

namespace App\Events;

use Illuminate\Broadcasting\Channel;
use Illuminate\Broadcasting\InteractsWithSockets;
use Illuminate\Broadcasting\PresenceChannel;
use Illuminate\Broadcasting\PrivateChannel;
use Illuminate\Contracts\Broadcasting\ShouldBroadcast;
use Illuminate\Foundation\Events\Dispatchable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Support\Facades\Auth;
use App\Models\User;

class NotificationEvent implements ShouldBroadcast
{
    use Dispatchable, InteractsWithSockets, SerializesModels;

    /**
     * Create a new event instance.
     *
     * @return void
     */
    public $user_id;
    public $message;
    public $comments;

    public function __construct($user_id, $message, $comments = "")
    {
        $this->user_id = $user_id;
        $this->message = $message;
        $this->comments = $comments;
    }

    public function broadcastOn()
    {
        return new Channel('post-status');
    }
    
    public function broadcastAs()
    {
        return 'my-post';
    }
    
    public function broadcastWith()
    {
        $user = User::whereId($this->user_id)->first();
        return ['name' => $user->name, 'profile_photo' => $user->profile_photo, 'comments' => $this->comments, 'user_id' => $this->user_id, 'message' => $this->message];
    }
}
