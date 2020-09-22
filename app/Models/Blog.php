<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Blog extends Model
{
    protected $table = 'blog';

    protected $primaryKey = 'id';

    protected $fillable = ['title', 'user_id', 'content', 'tags', 'community_id', 'cate_id'];

    public function user() {
        return $this->belongsTo(User::class, 'user_id');
    }

    public function comment() {
        return $this->hasMany(Comment::class, 'foreign_id');
    }

    public function category() {
        return $this->belongsTo(Category::class, 'cate_id');
    }

    public function scopeWithOrder($query, $type) {
        return $query->orderBy($type, 'desc')->orderBy('created_at', 'desc');
    }

    public function scopeWhereUserId($query, $user_id) {
        return $query->where(['status' => 1, 'user_id' => $user_id]);
    }

    public function scopeWhereTitle($query, $keyword) {
        return $query->where('title', 'like', "%{$keyword}%");
    }

    public function createUserBlog($request, $user_id) {
        return $this->create([
            'cate_id' => $request->cate_id,
            'title'   => $request->title,
            'user_id' => $user_id,
            'content' => $request->content,
            'tags'    => $request->tags,
            'community_id' => $request->community_id
        ]);
    }

    public function saveUserBlog($data)
    {
        $blog = $this->find($data['id']);

        $blog->title        = $data['title'];
        $blog->content      = $data['content'];
        $blog->tags         = $data['tags'];
        $blog->community_id = $data['community_id'];
        return $blog->save();
    }

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
    
    /**
     * 点赞数增加或减少，不更新updated_at
     */ 
    public function upPraise($id, $type) {
        $blog = $this->find($id);
        if($type == "increment") {
            return $blog->increment('praise', 1, ['updated_at' => $blog->updated_at]);
        } else {
            return $blog->decrement('praise', 1, ['updated_at' => $blog->updated_at]);
        }
    } 
}
