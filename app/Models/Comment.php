<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    protected $table = 'comment';

    protected $fillable = ['id', 'comment_id', 'foreign_id', 'user_id', 'content', 'praise'];

    public function getCreatedAtAttribute($date) {
        if (Carbon::now() > Carbon::parse($date)->addDays(15)) {
            return Carbon::parse($date);
        }

        return Carbon::parse($date)->diffForHumans();
    }

    public function user() {
        return $this->belongsTo(User::class, 'user_id');
    }
}
