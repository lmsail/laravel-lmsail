<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Praise extends Model
{
    protected $table = 'dynamicpraise';

    /**
     * 关联用户表
     */
    public function user() {
        $this->belongsTo(User::class, 'id', 'user_id');
    }

    /**
     * 查询指定文章下点赞用户
     *
     * @param $article_id
     * @return Praise
     */
    public function getPraiseUsers($article_id)
    {
        $praise = DB::table('blogpraise')->select('blogpraise.*', 'users.avatar', 'users.username', 'users.nickname')->where(['blogpraise.foreign_id' => $article_id])
            ->leftJoin('users', 'blogpraise.user_id','=', 'users.id')
            ->orderBy('blogpraise.id', 'desc')->limit(18)->get();
        return $praise;
    }
}
