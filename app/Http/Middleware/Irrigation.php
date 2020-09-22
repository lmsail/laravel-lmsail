<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Filesystem\Cache;
use Illuminate\Support\Facades\Auth;

class Irrigation
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        return $next($request);

        # 用户发动态防灌水检测, 访问频率， 上线后使用redis后再开启
        $user_id = Auth::id();
        $user_dynamic_date = Cache::store('file')->get(date('Ymd') . 'date' . $user_id); /* 上一次发帖时间 */
        $user_dynamic_time = Cache::store('file')->get(date('Ymd') . 'time' . $user_id); /* 今日发帖次数 */
        if($user_dynamic_time && $user_dynamic_time >= config('lmsail.user_dynamic_limit')) {
            return json(400, '您今日发布动态次数已达上限');
        }
        if($user_dynamic_date) {
            # 存在上一次发帖时间，计算间隔
            $timediff = timediff(time(), $user_dynamic_date);
            if($timediff['hour'] < 0 && $timediff['min'] < config('lmsail.user_dynamic_time')) {
                # 发布间隔限制
                return json(400, config('lmsail.user_dynamic_time') . '分钟内，只允许发布一次哦！');
            }
        }
        # 记录用户发动态限制缓存
        Cache::store('file')->add(date('Ymd') . 'date' . $user_id, time());  # 计入当前发帖时间
        Cache::store('file')->increment(date('Ymd') . 'time' . $user_id, 1); # 发帖次数递增1
    }
}
