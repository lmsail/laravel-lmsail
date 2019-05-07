<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class User extends Model
{
    protected $hidden  = ['password', 'remember_token'];

    /**
     * 关联statistics表
     */
    public function statistic() {
        # 全是坑。。foreign_key与local_key都带上
        return $this->belongsTo(Statistic::class, 'id', 'user_id');
    }

    /**
     * 关联blog表
     */
    public function blog() {
        # 注意 with查询时子查询必须带上外键
        return $this->hasMany(Blog::class, 'user_id', 'id');
    }

    /**
     * 获取指定用户信息
     *
     * @param $user_id
     * @return mixed
     */
    public static function getUserStatistics($user_id)
    {
        # 获取当前用户发布的文章数，粉丝数，收到的点赞数，收藏数，关联user_statistics表
        $userinfo = self::select('id', 'avatar', 'email', 'username', 'nickname', 'autograph')->where(['id' => $user_id])->with(['statistic' => function($query) {
            $query->select('id', 'user_id', 'praise', 'blognums', 'fans', 'collection', 'view');
        }])->first();

        # 最新文章
        $newblog = Blog::select('id', 'user_id', 'title', 'content', 'tags', 'view', 'praise', 'comment', 'community_id', 'created_at', 'updated_at')->where(['user_id' => $user_id])->orderBy('id', 'desc')->limit(5)->get();

        # 最受欢迎文章
        $niceblog = Blog::select('id', 'user_id', 'title', 'content', 'tags', 'view', 'praise', 'comment', 'community_id', 'created_at', 'updated_at')->where(['user_id' => $user_id])->orderBy('praise', 'desc')->limit(5)->get();

        # 文章归档
        $archive = DB::select("SELECT DATE_FORMAT(created_at,'%Y 年 %m 月') month, 'created_at', count(id) total FROM " .Config('database.connections.mysql.prefix'). "blog WHERE user_id = ". $user_id ." GROUP BY month ORDER BY month desc");

        # 后面加入标签与
        return compact('userinfo', 'newblog', 'niceblog', 'archive');
    }
}
