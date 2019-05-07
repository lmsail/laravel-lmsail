<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class AdminTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        # 网站配置项
        DB::table('admin_config')->insert([
            [
                'name'        => 'base.web_name',
                'value'       => 'LmSail',
                'description' => 'LmSail社区',
                'created_at'  => date('Y-m-d H:i:s'),
                'updated_at'  => date('Y-m-d H:i:s')
            ],
            [
                'name'        => '__configx__',
                'value'       => 'do not delete',
                'description' => '{"base.web_name":{"options":[],"element":"normal","help":"\u8bf7\u8f93\u5165\u7f51\u7ad9\u540d\u79f0\uff0c\u5982\uff1aLmSail\u793e\u533a","name":"\u7f51\u7ad9\u540d\u79f0","order":1},"base.web_title":{"options":[],"element":"normal","help":"\u8bf7\u8f93\u5165\u7f51\u7ad9\u6807\u9898\uff0c\u5982\uff1a\u52a8\u6001\u5217\u8868 - \u9ad8\u54c1\u8d28\u7684 Laravel \u5f00\u53d1\u8005\u793e\u533a - LmSail\u793e\u533a - \u9ad8\u54c1\u8d28\u7684 Laravel \u5f00\u53d1\u8005\u793e\u533a","name":"\u7f51\u7ad9\u6807\u9898","order":6},"base.web_description":{"options":[],"element":"normal","help":"\u8bf7\u8f93\u5165\u7f51\u7ad9\u63cf\u8ff0\uff0c\u5982\uff1a\u6211\u4eec\u662f\u9ad8\u54c1\u8d28\u7684 Laravel \u5f00\u53d1\u8005\u793e\u533a\uff0c\u81f4\u529b\u4e8e\u4e3a Laravel \u5f00\u53d1\u8005\u63d0\u4f9b\u4e00\u4e2a\u5206\u4eab\u521b\u9020\u3001\u7ed3\u8bc6\u4f19\u4f34\u3001\u534f\u540c\u4e92\u52a9\u7684\u8bba\u575b\u3002","name":"\u7f51\u7ad9\u63cf\u8ff0","order":16},"base.version":{"options":[],"element":"normal","help":"\u9ed8\u8ba4v1.0.1","name":"\u535a\u5ba2\u7248\u672c","order":21},"base.keywords":{"options":[],"element":"normal","help":"\u8bf7\u8f93\u5165\u7f51\u7ad9\u5173\u952e\u8bcd","name":"\u5173\u952e\u5b57","order":11},"base.author":{"options":[],"element":"normal","help":"\u5982\uff1almsail","name":"\u7f51\u7ad9\u4f5c\u8005","order":999},"base.copyright":{"options":[],"element":"normal","help":"\u7248\u6743\u4fe1\u606f\uff0c\u5982\uff1aPowered by lmsail.com\uff0c\u53ef\u4ee5\u968f\u610f\u66f4\u6539\u6216\u62b9\u53bb","name":"\u7248\u6743\u4fe1\u606f","order":999},"base.contact_email":{"options":[],"element":"normal","help":"\u586b\u5199\u90ae\u7bb1\u5730\u5740","name":"\u8054\u7cfb\u90ae\u7bb1","order":999},"base.logo":{"options":[],"element":"image","help":"\u7f51\u7ad9LOGO","name":"\u7f51\u7ad9LOGO","order":999},"blog.delete":{"options":{"1":"\u5f00\u542f","0":"\u5173\u95ed"},"element":"radio_group","help":"\u5f00\u542f\u540e\uff0c\u7528\u6237\u53ef\u5220\u9664\u81ea\u5df1\u7684\u535a\u6587\uff01\u5efa\u8bae\u5173\u95ed\uff08\u8be5\u529f\u80fd\u5f71\u54cd\u6570\u636e\u7edf\u8ba1\uff09","name":"\u5220\u9664\u6743\u9650","order":999}}',
                'created_at'  => date('Y-m-d H:i:s'),
                'updated_at'  => date('Y-m-d H:i:s')
            ],
            [
                'name'        => 'base.web_title',
                'value'       => '动态列表 - 高品质的 Laravel 开发者社区 - LmSail社区 - 高品质的 Laravel 开发者社区',
                'description' => '网站标题',
                'created_at'  => date('Y-m-d H:i:s'),
                'updated_at'  => date('Y-m-d H:i:s')
            ],
            [
                'name'        => 'base.web_description',
                'value'       => '我们是高品质的 Laravel 开发者社区，致力于为 Laravel 开发者提供一个分享创造、结识伙伴、协同互助的论坛。',
                'description' => '网站描述',
                'created_at'  => date('Y-m-d H:i:s'),
                'updated_at'  => date('Y-m-d H:i:s')
            ],
            [
                'name'        => 'base.version',
                'value'       => 'v1.0.1',
                'description' => '博客版本',
                'created_at'  => date('Y-m-d H:i:s'),
                'updated_at'  => date('Y-m-d H:i:s')
            ],
            [
                'name'        => 'base.keywords',
                'value'       => 'LmSail, sail, lmsail, laravel, 社区',
                'description' => '关键字',
                'created_at'  => date('Y-m-d H:i:s'),
                'updated_at'  => date('Y-m-d H:i:s')
            ],
            [
                'name'        => 'base.author',
                'value'       => 'lmsail',
                'description' => '网站作者',
                'created_at'  => date('Y-m-d H:i:s'),
                'updated_at'  => date('Y-m-d H:i:s')
            ],
            [
                'name'        => 'base.copyright',
                'value'       => 'Powered by lmsail.com',
                'description' => '版权信息',
                'created_at'  => date('Y-m-d H:i:s'),
                'updated_at'  => date('Y-m-d H:i:s')
            ],
            [
                'name'        => 'base.contact_email',
                'value'       => '582639426@qq.com',
                'description' => '联系邮箱',
                'created_at'  => date('Y-m-d H:i:s'),
                'updated_at'  => date('Y-m-d H:i:s')
            ],
            [
                'name'        => 'base.logo',
                'value'       => 'images/laravel.png',
                'description' => '网站LOGO',
                'created_at'  => date('Y-m-d H:i:s'),
                'updated_at'  => date('Y-m-d H:i:s')
            ],
            [
                'name'        => 'blog.delete',
                'value'       => '0',
                'description' => '删除权限',
                'created_at'  => date('Y-m-d H:i:s'),
                'updated_at'  => date('Y-m-d H:i:s')
            ]
        ]);

        # 后台菜单
        DB::table('admin_menu')->insert([
            [
                'parent_id'  => 0,
                'order'      => 1,
                'title'      => '后台首页',
                'icon'       => 'fa-bar-chart',
                'uri'        => '/',
                'permission' => '',
                'created_at'  => date('Y-m-d H:i:s'),
                'updated_at'  => date('Y-m-d H:i:s')
            ],
            [
                'parent_id'  => 0,
                'order'      => 2,
                'title'      => '后台管理',
                'icon'       => 'fa-tasks',
                'uri'        => '',
                'permission' => '',
                'created_at'  => date('Y-m-d H:i:s'),
                'updated_at'  => date('Y-m-d H:i:s')
            ],
            [
                'parent_id'  => 17,
                'order'      => 7,
                'title'      => '管理员',
                'icon'       => 'fa-users',
                'uri'        => 'auth/users',
                'permission' => '',
                'created_at'  => date('Y-m-d H:i:s'),
                'updated_at'  => date('Y-m-d H:i:s')
            ],
            [
                'parent_id'  => 17,
                'order'      => 8,
                'title'      => '角色',
                'icon'       => 'fa-user',
                'uri'        => 'auth/roles',
                'permission' => '',
                'created_at'  => date('Y-m-d H:i:s'),
                'updated_at'  => date('Y-m-d H:i:s')
            ],
            [
                'parent_id'  => 17,
                'order'      => 9,
                'title'      => '权限',
                'icon'       => 'fa-ban',
                'uri'        => 'auth/permissions',
                'permission' => '',
                'created_at'  => date('Y-m-d H:i:s'),
                'updated_at'  => date('Y-m-d H:i:s')
            ],
            [
                'parent_id'  => 2,
                'order'      => 4,
                'title'      => '菜单列表',
                'icon'       => 'fa-bars',
                'uri'        => 'auth/menu',
                'permission' => '',
                'created_at'  => date('Y-m-d H:i:s'),
                'updated_at'  => date('Y-m-d H:i:s')
            ],
            [
                'parent_id'  => 2,
                'order'      => 5,
                'title'      => '操作日志',
                'icon'       => 'fa-history',
                'uri'        => 'auth/logs',
                'permission' => '',
                'created_at'  => date('Y-m-d H:i:s'),
                'updated_at'  => date('Y-m-d H:i:s')
            ],
            [
                'parent_id'  => 0,
                'order'      => 10,
                'title'      => '用户管理',
                'icon'       => 'fa-users',
                'uri'        => '',
                'permission' => '',
                'created_at'  => date('Y-m-d H:i:s'),
                'updated_at'  => date('Y-m-d H:i:s')
            ],
            [
                'parent_id'  => 8,
                'order'      => 11,
                'title'      => '用户列表',
                'icon'       => 'fa-user',
                'uri'        => '/users',
                'permission' => '',
                'created_at'  => date('Y-m-d H:i:s'),
                'updated_at'  => date('Y-m-d H:i:s')
            ],
            [
                'parent_id'  => 0,
                'order'      => 12,
                'title'      => '博客管理',
                'icon'       => 'fa-newspaper-o',
                'uri'        => '',
                'permission' => '',
                'created_at'  => date('Y-m-d H:i:s'),
                'updated_at'  => date('Y-m-d H:i:s')
            ],
            [
                'parent_id'  => 10,
                'order'      => 13,
                'title'      => '博客列表',
                'icon'       => 'fa-bars',
                'uri'        => '/blogs',
                'permission' => '',
                'created_at'  => date('Y-m-d H:i:s'),
                'updated_at'  => date('Y-m-d H:i:s')
            ],
            [
                'parent_id'  => 0,
                'order'      => 14,
                'title'      => '动态管理',
                'icon'       => 'fa-coffee',
                'uri'        => '',
                'permission' => '',
                'created_at'  => date('Y-m-d H:i:s'),
                'updated_at'  => date('Y-m-d H:i:s')
            ],
            [
                'parent_id'  => 12,
                'order'      => 15,
                'title'      => '动态列表',
                'icon'       => 'fa-bars',
                'uri'        => '/dynamics',
                'permission' => '',
                'created_at'  => date('Y-m-d H:i:s'),
                'updated_at'  => date('Y-m-d H:i:s')
            ],
            [
                'parent_id'  => 0,
                'order'      => 18,
                'title'      => '媒体管理',
                'icon'       => 'fa-file',
                'uri'        => 'media',
                'permission' => '',
                'created_at'  => date('Y-m-d H:i:s'),
                'updated_at'  => date('Y-m-d H:i:s')
            ],
            [
                'parent_id'  => 0,
                'order'      => 19,
                'title'      => '日志管理',
                'icon'       => 'fa-database',
                'uri'        => 'logs',
                'permission' => '',
                'created_at'  => date('Y-m-d H:i:s'),
                'updated_at'  => date('Y-m-d H:i:s')
            ],
            [
                'parent_id'  => 2,
                'order'      => 3,
                'title'      => '网站配置',
                'icon'       => 'fa-toggle-on',
                'uri'        => 'configx/edit',
                'permission' => '',
                'created_at'  => date('Y-m-d H:i:s'),
                'updated_at'  => date('Y-m-d H:i:s')
            ],
            [
                'parent_id'  => 0,
                'order'      => 6,
                'title'      => '管理员管理',
                'icon'       => 'fa-user-secret',
                'uri'        => '',
                'permission' => '',
                'created_at'  => date('Y-m-d H:i:s'),
                'updated_at'  => date('Y-m-d H:i:s')
            ],
            [
                'parent_id'  => 0,
                'order'      => 16,
                'title'      => '评论管理',
                'icon'       => 'fa-commenting-o',
                'uri'        => '',
                'permission' => '',
                'created_at'  => date('Y-m-d H:i:s'),
                'updated_at'  => date('Y-m-d H:i:s')
            ],
            [
                'parent_id'  => 18,
                'order'      => 18,
                'title'      => '评论列表',
                'icon'       => 'fa-bars',
                'uri'        => '/comment',
                'permission' => '',
                'created_at'  => date('Y-m-d H:i:s'),
                'updated_at'  => date('Y-m-d H:i:s')
            ],
        ]);

        # 后台角色
        DB::table('admin_role_menu')->insert(['role_id' => 1, 'menu_id' => 2]);
        DB::table('admin_roles')->insert(['name' => '贾维斯', 'slug' => '总管理员', 'created_at' => date('Y-m-d H:i:s'), 'updated_at' => date('Y-m-d H:i:s')]);

        # 后台权限

        DB::table('admin_permissions')->insert([[
            'name'        => 'All permission',
            'slug'        => '*',
            'http_method' => '',
            'http_path'   => '*',
            'created_at'  => '2019-04-18 22:57:02',
            'updated_at'  => '2019-04-18 22:57:02'
        ],[
            'name'        => 'Dashboard',
            'slug'        => 'dashboard',
            'http_method' => 'GET',
            'http_path'   => '/',
            'created_at'  => '2019-04-18 22:57:02',
            'updated_at'  => '2019-04-18 22:57:02'
        ],[
            'name'        => 'Login',
            'slug'        => 'auth.login',
            'http_method' => 'GET',
            'http_path'   => '/auth/login
/auth/logout',
            'created_at'  => '2019-04-18 22:57:02',
            'updated_at'  => '2019-04-18 22:57:02'
        ],[
            'name'        => 'User setting',
            'slug'        => 'auth.setting',
            'http_method' => 'GET,PUT',
            'http_path'   => '/auth/setting',
            'created_at'  => '2019-04-18 22:57:02',
            'updated_at'  => '2019-04-18 22:57:02'
        ],[
            'name'        => 'Auth management',
            'slug'        => 'auth.management',
            'http_method' => '',
            'http_path'   => '/auth/roles
/auth/permissions
/auth/menu
/auth/logs',
            'created_at'  => '2019-04-18 22:57:02',
            'updated_at'  => '2019-04-18 22:57:02'
        ],[
            'name'        => 'Media manager',
            'slug'        => 'ext.media-manager',
            'http_method' => '',
            'http_path'   => '/media*',
            'created_at'  => '2019-04-18 22:57:02',
            'updated_at'  => '2019-04-18 22:57:02'
        ],[
            'name'        => 'Logs',
            'slug'        => 'ext.log-viewer',
            'http_method' => '',
            'http_path'   => '/logs*',
            'created_at'  => '2019-04-18 22:57:02',
            'updated_at'  => '2019-04-18 22:57:02'
        ],[
            'name'        => 'Admin Configx',
            'slug'        => 'ext.configx',
            'http_method' => '',
            'http_path'   => '/configx/*',
            'created_at'  => '2019-04-18 22:57:02',
            'updated_at'  => '2019-04-18 22:57:02'
        ],[
            'name'        => 'Admin Config',
            'slug'        => 'ext.config',
            'http_method' => '',
            'http_path'   => '/config*',
            'created_at'  => '2019-04-18 22:57:02',
            'updated_at'  => '2019-04-18 22:57:02'
        ]]);

        DB::table('admin_role_permissions')->insert(['role_id' => 1, 'permission_id' => 1]);

        # 后台角色用户
        DB::table('admin_role_users')->insert(['role_id' => 1, 'user_id' => 1]);

        # 后台管理员
        DB::table('admin_users')->insert([
            'username'       => 'admin',
            'password'       => '$2y$10$.KD0kqSOZB5PSZxA0KDrL.zKCShr6RbReckcGxeNrOePQI.wWocGC', // admin
            'name'           => '社区管理员',
            'avatar'         => 'images/06c17d987458fc546869843494e2015e.jpg',
            'remember_token' => 'tCXNyL8gpaTpRdbNuOLhy6hIwkScQkbNK5CsDndo377GCoIBMXylDPTVWmb0',
            'created_at'     => date('Y-m-d H:i:s'),
            'updated_at'     => date('Y-m-d H:i:s')
        ]);
    }
}
