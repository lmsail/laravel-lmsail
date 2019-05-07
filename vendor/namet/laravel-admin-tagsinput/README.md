laravel-admin-tagsinput
======
一个集成`bootstrap-tagsinput`的`laravel-admin` `Form`扩展

效果图
-
![result.png](https://github.com/namet117/images/raw/master/laravel-admin-tags/result.png)

环境依赖
-
* php `>= 7`
* laravel-admin `~1.6`

安装方式
-
1.使用composer安装扩展包
```shell
composer require namet/laravel-admin-tagsinput -vvv
```
2.发布静态资源
```shell
php artisan vendor:publish --tag=laravel-admin-tagsinput
```

3.在控制器中使用`tagsinput`方法
```php
// app/Admin/Controllers/GoodsController

protected function form()
{
    $form = new Form(new GoodsCate);

    $form->text('name', '属性名');
    $form->switch('nullable', '可空')->default(1);
    $form->tagsinput('values', '可选值');
    return $form;
}
```

LICENSE
-
MIT


