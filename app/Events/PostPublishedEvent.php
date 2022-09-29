<?php

namespace App\Events;

use Illuminate\Broadcasting\Channel;
use Illuminate\Broadcasting\InteractsWithSockets;
use Illuminate\Broadcasting\PresenceChannel;
use Illuminate\Broadcasting\PrivateChannel;
use Illuminate\Contracts\Broadcasting\ShouldBroadcast;
use Illuminate\Foundation\Events\Dispatchable;
use Illuminate\Queue\SerializesModels;
use App\Models\Category;

class PostPublishedEvent implements ShouldBroadcast
{
    use Dispatchable, InteractsWithSockets, SerializesModels;

    public $data;

    public function __construct(array $data)
    {
        $this->data = $data;
    }

    public function broadcastOn()
    {
        return new Channel('post-published');
    }
    
    public function broadcastAs()
    {
        return 'post-published';
    }
    
    public function broadcastWith()
    {
        $image_status = "";
        if(isset($this->data['post_cover_photo']))
        {
            $image_status = "";
        }
        else{
            $image_status = "d-none";
        }
        $category_name = Category::whereId($this->data['category_id'])->pluck('category_name')->first();
        return [
            'user_id' => auth()->id(), 
            'message' => auth()->user()->name.' published a new post now!', 
            'data' => $this->data, 
            'category_name' => $category_name,
            'created_by' => auth()->user()->name,
            'image_status' => $image_status,
        
        ];
    }
}
