<?php

namespace Namet\Tagsinput;

use Encore\Admin\Admin;
use Encore\Admin\Form;
use Illuminate\Support\ServiceProvider;

class TagsinputServiceProvider extends ServiceProvider
{
    /**
     * {@inheritdoc}
     */
    public function boot(TagsinputExtension $extension)
    {
        if (!TagsinputExtension::boot()) {
            return ;
        }

        if ($views = $extension->views()) {
            $this->loadViewsFrom($views, 'laravel-admin-tagsinput');
        }

        if ($this->app->runningInConsole() && $assets = $extension->assets()) {
            $this->publishes(
                [$assets => public_path('vendor/namet/laravel-admin-tagsinput')],
                'laravel-admin-tagsinput'
            );
        }

        Admin::booting(function () {
            Form::extend('tagsinput', Tagsinput::class);
        });
    }
}
