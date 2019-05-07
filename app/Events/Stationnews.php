<?php

namespace App\Events;

use Illuminate\Broadcasting\Channel;
use Illuminate\Queue\SerializesModels;
use Illuminate\Broadcasting\PrivateChannel;
use Illuminate\Broadcasting\PresenceChannel;
use Illuminate\Foundation\Events\Dispatchable;
use Illuminate\Broadcasting\InteractsWithSockets;
use Illuminate\Contracts\Broadcasting\ShouldBroadcast;

class Stationnews
{
    use Dispatchable, InteractsWithSockets, SerializesModels;

    public $data = [];

    public $type = '';

    /**
     * Create a new event instance.
     *
     * @return void
     */
    public function __construct($data, $type = 'blog-comment')
    {
        if(!in_array($type, ['blog-comment', 'blog-praise', 'reply-praise', 'dynamic-praise', 'dynamic-comment'])) {
            # do something...

        }

        // 依赖注入参数
        $this->data = $data;
        $this->type = $type;
    }

    /**
     * Get the channels the event should broadcast on.
     *
     * @return \Illuminate\Broadcasting\Channel|array
     */
    public function broadcastOn()
    {
        return new PrivateChannel('channel-name');
    }
}
