<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Blog extends Model
{
    protected $table = 'blog';

    protected $primaryKey = 'id';

    protected $fillable = ['title', 'user_id', 'content', 'tags', 'community_id'];

    public function user() {
        # user_id 为blog中与users表的关联字段
        return $this->belongsTo(User::class, 'user_id');
    }

    public function comment() {
        return $this->hasMany(Comment::class, 'foreign_id');
    }

    public function scopeWithOrder($query, $type) {
        return $query->orderBy($type, 'desc')->orderBy('created_at', 'desc')->paginate(config('lmsail.page-limit'));
    }

    public function scopeWhereUserId($query, $user_id) {
        return $query->where(['status' => 1, 'user_id' => $user_id]);
    }

    public function scopeWhereTitle($query, $keyword) {
        return $query->where('title', 'like', "%{$keyword}%");
    }

    /**
     * 发布博客
     */
    public function createUserBlog($data, $user_id) {
        return $this->create([
            'title'   => $data['title'],
            'user_id' => $user_id,
            'content' => $data['content'],
            'tags'    => $data['tags'],
            'community_id' => $data['community_id']
        ]);
    }

    /**
     * 博文编辑
     */
    public function saveUserBlog($data)
    {
        $blog = $this->find($data['id']);

        $blog->title        = $data['title'];
        $blog->content      = $data['content'];
        $blog->tags         = $data['tags'];
        $blog->community_id = $data['community_id'];
        return $blog->save();
    }

    /**
     * 删除用户博客
     */
    public function delUserBlog($id)
    {
        return $this->find($id)->delete();
    }

    /**
     * 浏览数自增1并不更新updated_at
     */
    public function incViewCount($id)
    {
        $blog = $this->find($id);
        return $blog->increment('view', 1, ['updated_at' => $blog->updated_at]);
    }
}
