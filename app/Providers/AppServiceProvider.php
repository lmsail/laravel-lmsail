<?php

namespace App\Providers;

use App\Models\Blog;
use App\Models\Comment;
use App\Models\Dynamic;
use App\Models\Category;
use App\Observers\BlogObserver;
use App\Observers\CommentObserver;
use App\Observers\DynamicObserver;
use Encore\Admin\Config\Config;
use Illuminate\Support\Facades\View;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        $table = config('admin.extensions.config.table', 'admin_config');
        if (Schema::hasTable($table)) {
            Config::load();
        }

        # 数据共享
        View::share('categories', Category::where('cascade', '=', 0)->orderBy('order', 'desc')->get());

        # 注册模型观察者
        Comment::observe(CommentObserver::class);

        Blog::observe(BlogObserver::class);

        Dynamic::observe(DynamicObserver::class);

        Schema::defaultStringLength(191);
    }
}
