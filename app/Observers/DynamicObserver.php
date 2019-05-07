<?php

namespace App\Observers;

use App\Models\Comment;
use App\Models\Dynamic;
use App\Models\Praise;

class DynamicObserver
{
    /**
     * Handle the dynamic "created" event.
     *
     * @param  \App\Models\Dynamic  $dynamic
     * @return void
     */
    public function created(Dynamic $dynamic)
    {
        //
    }

    /**
     * Handle the dynamic "updated" event.
     *
     * @param  \App\Models\Dynamic  $dynamic
     * @return void
     */
    public function updated(Dynamic $dynamic)
    {
        //
    }

    /**
     * Handle the dynamic "deleted" event.
     *
     * @param  \App\Models\Dynamic  $dynamic
     * @return void
     */
    public function deleted(Dynamic $dynamic)
    {
        // 删除动态下评论
        Comment::where('foreign_id', $dynamic->id)->delete();

        Praise::where('foreign_id', $dynamic->id)->delete();
    }

    /**
     * Handle the dynamic "restored" event.
     *
     * @param  \App\Models\Dynamic  $dynamic
     * @return void
     */
    public function restored(Dynamic $dynamic)
    {
        //
    }

    /**
     * Handle the dynamic "force deleted" event.
     *
     * @param  \App\Models\Dynamic  $dynamic
     * @return void
     */
    public function forceDeleted(Dynamic $dynamic)
    {
        //
    }
}
