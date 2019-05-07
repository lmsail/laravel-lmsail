<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="{{ asset('blog') }}" rel="stylesheet">
    <link href="{{ asset('blog-vendors.css') }}" rel="stylesheet">
    <link href="{{ asset('dynamic') }}" rel="stylesheet">
    <title>游戏统计</title>
    <style>
        .segment {
            color: #f5f5f5;
            background-color: #000!important;
            font-size: 30px!important;
            min-height: 300px;
            line-height: 50px;
        }
        .segment div:nth-child(2), .segment div:nth-child(3) {
            font-size: 18px;
        }
        .segment div:nth-child(2) span, .segment div:nth-child(3) span {
            font-size: 25px;
        }
    </style>
</head>
<body>
    <div class="ui centered grid container stackable">
        <div class="twelve column mt-lg-5">
            <h1 class="text-center">超级牛逼的控制台</h1>
            <div class="ui three column stackable padded middle aligned centered color grid text-center">
                <div class="column" style="font-size: 20px;font-weight: bold">
                    当前游戏状态： <span style="color: red">{{ $longhu[$data['gameState']] }}</span>&nbsp;&nbsp;&nbsp;
                    当前上庄人：<span style="color: red">{{ $data['isRobotBanker'] == 0 ? '真人当庄' : '平台坐庄' }}</span>
                </div>
            </div>
            <div class="ui message">
                <div class="header">龙虎斗游戏规则 </div>
                <ul class="list">
                    <li>真实玩家上庄：机器人下注多的一方 <b style="color: red;">赢</b>！ 若无机器人下注，随机开出赢方，不可控</li>
                        <li>平台坐庄：当大于平台所设指标，则随机开出赢方，不可控！否则：<b style="color: red;">杀大赔小</b></li>
                </ul>
            </div>
            <div class="ui three column stackable padded middle aligned centered color grid text-center">
                <div class="column">
                    <div class="ui red segment">
                        <div class=""><img src="http://www.8w70n.cn/static/assets/images/long.png" alt=""></div>
                        <div class="">真实下注：<span>{{ $data['betsList']['long']+0 }}</span></div>
                        <div class="">机器下注：<span>{{ $data['robotBetsList']['long']+0 }}</span></div>
                        <div class=""><button class="ui red button" onclick="setWinType(1);"><i class="trademark icon"></i> 点杀</button></div>
                    </div>
                </div>
                <div class="column">
                    <div class="ui brown segment">
                        <div class=""><img src="http://www.8w70n.cn/static/assets/images/he.png" alt=""></div>
                        <div class="">真实下注：<span>{{ $data['betsList']['ping']+0 }}</span></div>
                        <div class="">机器下注：<span>{{ $data['robotBetsList']['ping']+0 }}</span></div>
                        <div class=""><button class="ui red button" onclick="setWinType(2);"><i class="trademark icon"></i> 点杀</button></div>
                    </div>
                </div>
                <div class="column">
                    <div class="ui red segment">
                        <div class=""><img src="http://www.8w70n.cn/static/assets/images/hu.png" alt=""></div>
                        <div class="">真实下注：<span>{{ $data['betsList']['hu']+0 }}</span></div>
                        <div class="">机器下注：<span>{{ $data['robotBetsList']['hu']+0 }}</span></div>
                        <div class=""><button class="ui red button" onclick="setWinType(3);"><i class="trademark icon"></i> 点杀</button></div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="{{ asset('blog/js/jquery.js') }}"></script>
    <script src="{{ asset('blog') }}"></script>
    <script>
        function setWinType(type) {
            $(this).addClass("loading");

        }
    </script>
</body>
</html>