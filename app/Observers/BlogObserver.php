<?php

namespace App\Observers;

use App\Models\Blog;

class BlogObserver
{
    /**
     * Handle the blog "created" event.
     *
     * @param  \App\Models\Blog  $blog
     * @return void
     */
    public function created(Blog $blog)
    {

        //
    }

    /**
     * Handle the blog "updated" event.
     *
     * @param  \App\Models\Blog  $blog
     * @return void
     */
    public function updated(Blog $blog)
    {
        //
    }

    /**
     * Handle the blog "deleted" event.
     *
     * @param  \App\Models\Blog  $blog
     * @return void
     */
    public function deleted(Blog $blog)
    {
        // 删除博客下所有评论、点赞及评论点赞数据。同时减少该用户的博文数据统计，我去，功能影响甚广~
        // loading...
    }

    /**
     * Handle the blog "restored" event.
     *
     * @param  \App\Models\Blog  $blog
     * @return void
     */
    public function restored(Blog $blog)
    {
        //
    }

    /**
     * Handle the blog "force deleted" event.
     *
     * @param  \App\Models\Blog  $blog
     * @return void
     */
    public function forceDeleted(Blog $blog)
    {
        //
    }
}
