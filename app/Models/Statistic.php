<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Statistic extends Model
{
    protected $fillable = ['user_id']; /* 允许更改的数据 */

    /**
     * 生成用户统计数据
     *
     * @param $user_id
     */
    public static function initUserStatistic($user_id)
    {
        return self::create([ 'user_id' => $user_id ]);
    }

    /**
     * Determine if the model uses timestamps.
     *
     * @return bool
     */
    public function usesTimestamps()
    {
        return $this->timestamps;
    }
}
