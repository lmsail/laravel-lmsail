<?php

use Illuminate\Routing\Router;

Admin::registerAuthRoutes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
], function (Router $router) {

    $router->get('/', 'HomeController@index');

    # 用户列表
    $router->resource('users', 'UsersController');

    # 博客分类
    $router->resource('category', 'CategoryController');

    # 博客列表
    $router->resource('blogs', 'BlogController');

    # 动态列表
    $router->resource('dynamics', 'DynamicController');

    # 评论列表 注意：新增操作，只支持博客评论，动态评论暂未支持
    $router->resource('comment', 'CommentController');

    # 关于我单页
    $router->resource('aboutme', 'PagesController');

    # 添加单页数据
    $router->post('addabout', 'PagesController@addabout');
});
