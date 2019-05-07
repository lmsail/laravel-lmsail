<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        # 生成用户
        DB::table('users')->insert([
            'username'         => 'lmsail',
            'nickname'         => '社区管理者',
            'avatar'           => '/storage/06c17d987458fc546869843494e2015e.jpg',
            'sex'              => 0,
            'special'          => 1,
            'email'            => 'lmsail@qq.com',
            'autograph'        => '人生并不像火车要通过每个站似的经过每一个生活阶段。人生总是直向前行走，从不留下什么。 —— 刘易斯',
            'personal_website' => 'http://www.lmsail.com',
            'introduction'     => '热爱编程与生活的PHPER~~',
            'created_at'       => '2019-04-18 21:38:43',
            'updated_at'       => '2019-04-22 18:52:46',
            'password'         => '$2y$10$voa375/c52ejaIbNWR444OBCtHi2v1qTLetL2SJBFRUili1R0AwH2', // 12345678
        ]);

        # 生成用户数据统计
        DB::table('statistics')->insert([
            'user_id' => 1
        ]);
    }
}
