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

class NotificationEvent implements ShouldBroadcast
{
    use Dispatchable, InteractsWithSockets, SerializesModels;

    /**
     * Create a new event instance.
     *
     * @return void
     */
    public $value;
    public function __construct($value)
    {
        $this->value = $value;
    }

    public function broadcastOn()
    {
        return new Channel('live-score.1');
    }
    
    public function broadcastAs()
    {
        return 'my-score';
    }
    
    public function broadcastWhen()
    {
        return $this->value > 0;
    }
}
