<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class BlogTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        DB::table('blog')->insert([
            'user_id'    => 1,
            'title'      => 'LmSail社区系统安装及使用',
            'content'    => '# 写在前面的话  

LmSail社区的前身是基于`UUASK问答系统`改造而成的，历时一个多月，集`问答`、`博客`、`商城`、`在线群聊`等功能于一身的`MarkDown博客问答`型社区，其内核为`ThinkPhp3.2`（搭建时还木有接触`ThinkPhp5.x`版本），当后来陆续接触了`ThinkPhp5.0`、`ThinkPhp5.1`、`Laravel`后，体验到了代码的优雅，友好，新颖等特性，有了`重构`的决定，当然在时间上可能来的稍晚了一些，在`重构`前，一直在使用`ThinkPhp5.1`框架，可能是用的有点`厌倦`了，哈哈，大概程序员都这样吧，总是想尝试点新的东西！也因此加入了`Laravel`的大家庭，新的LmSail社区也是在边学边做的情况下悄悄的诞生了！  

# LmSail社区以前的模样  

![file](/storage/21ecf7db46b69df894246718c6878852.png)

# LmSail社区现在的样子  

![file](/storage/fcc8c86c8e5bd2929ee3a2d741d95252.png)

# LmSail社区介绍  
LmSail社区基于`Laravel5.8`开发而成，界面及部分功能模仿`Summer`大神的`learnku`社区，后端使用`Laravel-admin`搭建而成，目前已完成的功能如下：  
* 基本博客功能，`点赞`、`评论`，同时支持`MarkDown`
* 社区动态，也是LmSail社区主打功能，支持`MarkDOwn`，`表情`，`点赞`、`评论`（支持@xx 功能）  
* 用户中心部分功能（资料修改，博客中心等）
* 简单搜索支持

尚未完成的部分：  

* 用户中心待完善
* 消息系统（站内信，回复，评论等通知）
* 搜索采用`elasticsearch`全文搜索引擎重构
* 其他  

# 演示地址  

演示地址：[LmSail社区](http://www.lmsail.com)

# 安装及使用  
1. 拉取LmSail社区代码  
> git clone git@github.com:MarichMarck/laravel-lmsail.git
2. 生成`.env`配置文件中`APP_KEY` 应用密钥
> php artisan key:generate
3. 设置`.env`配置文件中`APP_URL` 网站地址
> APP_URL=http://www.testblog.com
4. 更改数据库配置，如下：  
```env
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=testblog
DB_USERNAME=root
DB_PASSWORD=root
```
5. ~~根目录下执行`composer install`安装扩展（此步骤可忽略）~~
6. 生成数据表，命令行执行： 
> php artisan migrate
7. 生成数据，命令行执行：
> php artisan db:seed
8. 建立storage目录文件到public的软连接
> php artisan storage:link 
9. 至此`LmSail社区`就安装完成了，访问第三步设置的域名就可以愉快的访问啦
> 前台管理员账号：`lmsail`   `12345678`
> 后台地址：http://www.testblog.com  账号密码默认：admin

# License  

> LmSail社区系统仅仅作为个人学习用途，基于`MIT License` 协议，将永久`免费`、`开源`，这意味着使用者可以随意更改及使用，无需保留`Powered by lmsail.com`等字样  
> 请遵守当地法律，请勿恶意传播，损伤！开源不易，请多多支持！',
            'tags'       => 'LmSail,使用说明,Laravel',
            'created_at' => '2019-04-23 22:32:39',
            'updated_at' => '2019-04-24 00:52:40',
        ]);
    }
}
