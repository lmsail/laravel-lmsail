<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Dynamic extends Model
{

    protected $table      = 'dynamic';
    protected $primaryKey = 'id';
    protected $fillable   = ['user_id', 'content'];

    public function user()
    {
        # user_id 为dynamic中与users表的关联字段
        return $this->belongsTo(User::class, 'user_id');
    }

    /**
     * 关联Comment表
     */
    public function comment()
    {
        return $this->hasMany(Comment::class, 'foreign_id');
    }

    public function scopeWhereContent($query, $keyword) {
        return $query->where('content', 'like', "%{$keyword}%");
    }

    public function scopeWithOrder($query) {
        return $query->orderBy('praise', 'desc')->orderBy('comment', 'desc')->orderBy('view', 'desc')->orderBy('id', 'desc');
    }

    /**
     * 添加动态
     */
    public function addBbsDynamic($user_id, $content) {
        return $this->create([ 'user_id' => $user_id, 'content' => $content ]);
    }

    /**
     * 删除动态
     */
    public function deleteWithComment($id) {
        return $this->find($id)->delete();
    }
}
