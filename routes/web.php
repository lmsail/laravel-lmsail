<?php

Auth::routes();

# Dynamic动态模块
Route::namespace('Dynamic')->group(function() {

    # Dynamic 动态首页
    Route::get('/', 'DynamicController@index');

    Route::get('dynamic', 'DynamicController@index');

    # 删除动态
    Route::post('deldynamic', 'DynamicController@deldynamic');

    # 动态发布
    Route::post('sendDynamic', 'DynamicController@sendDynamic')->middleware('irrigation');

});

# blog模块
Route::namespace('Blog')->group(function() {

    # Blog文章发布页
    Route::any('release', 'BlogController@release')->middleware('auth');

    # Blog文章修改页
    Route::get('blogedit/{id}', 'BlogController@blogedit')->where(['id' => '[0-9]+'])->middleware('auth');

    # Blog文章修改
    Route::post('blogedit', 'BlogController@blogedit')->middleware('auth');

    # 用户blog列表页面
    Route::get('blog/{name}/{uid}', 'BlogController@blog')->where(['name' => '[a-zA-Z]+', 'uid' => '[0-9]+'])->middleware('blog.user');

    # 所有博客列表页
    Route::get('list/{cateid?}', 'BlogController@list')->name('list');

    # 博客文章搜索页
    Route::get('search', 'BlogController@search');

    # 用户blog详情页面
    Route::get('article/{id}/{uid}', 'BlogController@article')->where(['id' => '[0-9]+', 'uid' => '[0-9]+'])->middleware('blog.user');

    # 添加评论
    Route::post('comment', 'BlogController@comment')->middleware('irrigation', 'auth');
    
    # 专栏
    Route::get('special', 'SpecialController@special');    

    # 专栏列表页
    Route::get('specialist/{id}', 'SpecialController@specialist');
});

# User 模块路由
Route::group(['namespace' => 'User', 'prefix' => 'users'], function () {

    # 用户资料编辑
    Route::get('/{uid}/edit', 'UsersController@edit')->where(['uid' => '[0-9]+'])->middleware('auth');

    Route::post('edit', 'UsersController@edit')->middleware('auth');

    # 用户列表
    Route::get('list',  'UsersController@list');

    # 开源产品
    Route::get('project', 'UsersController@project');

    # 关于我
    Route::get('aboutme', 'UsersController@aboutme');

});

# ajax相关路由
Route::group(['namespace' => 'Api', 'prefix' => 'api', 'middleware' => 'auth'], function () {

    # 点赞动作
    Route::post('praise', 'ApiController@praise');

    # 评论点赞动作
    Route::post('replypraise', 'ApiController@replypraise');

    # 获取评论列表
    Route::post('comments', 'ApiController@comments');

    # 添加动态评论
    Route::post('addcomment', 'ApiController@addcomment');

    # 博客删除
    Route::post('blogdel', 'ApiController@blogdel');

    # 图片上传
    Route::post('upload', 'ApiController@upload');
});

# Auth用户模块
Route::namespace('Auth')->group(function () {
    # 退出登录
    Route::any('logout', 'LoginController@logout');
});