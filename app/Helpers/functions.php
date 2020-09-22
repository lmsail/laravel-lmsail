<?php

if(!function_exists('face_imgname')) {
    /**
     * 解析表情名称
     *
     * @param $imgName
     * @return string
     */
    function face_imgname($imgName) {
        return '[#' . str_replace('.png', '', $imgName) . ']';
    }
}

if(!function_exists('analysisAt')) {
    /**
     * 解析@xxx
     * 正则：/@[\w\x{4e00}-\x{9fa5}]{2,10}\s{1}/iu
     * @param $content 带解析的内容
     * @param $callback 回调  支持可自定义回调操作
     */
    function analysisAt($content, $callback = null) {
        preg_match_all ( '%@(\w+)%u', $content, $matches);
        if(!empty($matches[0])) {
            $users = [];
            foreach ($matches[0] as $key => $val) {
                if(is_callable($callback)) {
                    $username = str_replace('@', '', trim($val));
                    if(!in_array($username, $users)) {
                        array_push($users, $username);
                        call_user_func(function () use ($username, $callback) {
                            $callback($username);
                        });
                    }
                } else {
                    $content = str_replace($val, '<a href="" target="_blank">' . trim($val) . '</a> ', $content);
                }
            }
            unset($users);
        }
        return is_callable($callback) ? '' : $content;
    }
}

if(!function_exists('json')) {
    /**
     * json返回值格式化
     */
    function json($code, $msg, $data = []) {
        return json_encode(['code' => $code, 'msg' => $msg, 'data' => $data]);
    }
}

if(!function_exists('analysis_face')) {
    /**
     * 解析表情与markdown
     *
     * @param $content
     */
    function analysis_face($content) {

        # 解析markdown语法
        $content = Parsedown::instance()->setMarkupEscaped(true)->text($content);

        $preg = '/\[#(\w+?)\]/';
        preg_match_all($preg, $content, $data);
        $matchData = $data[1];
        if(!empty($matchData)) {
            $face_path = env('APP_URL');
            foreach ($matchData as $key => $val) {
                $face_src = $face_path . '/blog/face/' . $val . '.png';
                $content = str_replace('[#' . $val . ']', '<img class="emoji" width="25" height="25" src="'.$face_src.'">', $content);
            }
        }
        return $content;
    }
}

if(!function_exists('timediff')) {
    /**
     * 计算时间间隔
     *
     * @param $begin_time
     * @param $end_time
     * @return array
     */
    function timediff( $begin_time, $end_time )
    {
        if ( $begin_time < $end_time ) {
            $starttime = $begin_time;
            $endtime = $end_time;
        } else {
            $starttime = $end_time;
            $endtime = $begin_time;
        }
        $timediff = $endtime - $starttime;
        $days = intval( $timediff / 86400 );
        $remain = $timediff % 86400;
        $hours = intval( $remain / 3600 );
        $remain = $remain % 3600;
        $mins = intval( $remain / 60 );
        $secs = $remain % 60;
        $res = ['day' => $days, 'hour' => $hours, 'min' => $mins, 'sec' => $secs];
        return $res;
    }
}


if(!function_exists('curl_post')) {
    /**
     * @param string $url post请求地址
     * @param array $params
     * @return mixed
     */
    function curl_post($url, array $params = array(), $type = 1)
    {
        $data_string = json_encode($params);
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_HEADER, 0);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 10);
        curl_setopt($ch, CURLOPT_POST, 1);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $data_string);
        curl_setopt($ch, CURLOPT_HTTPHEADER, array( 'Content-Type: application/json'));
        $data = curl_exec($ch);
        curl_close($ch);
        $data = $type == 2 ? json_decode($data, true) : $data;
        return ($data);
    }
}

/**
 * 
 * @param [type] $content [description]
 */
function ParseMarkdown($content) {
    return Parsedown::instance()->setMarkupEscaped(true)->text($content);
}