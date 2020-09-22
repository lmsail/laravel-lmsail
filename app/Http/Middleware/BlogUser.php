<?php

namespace App\Http\Middleware;

use Closure;
use App\Models\User;

class BlogUser
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
        # 查询用户信息及用户基础统计
        $statistics = User::getUserStatistics($request->route('uid'));
        $request->merge(['statistics' => $statistics]);
        return $next($request);
    }
}
