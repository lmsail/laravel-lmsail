@extends('layouts.home')

@section('title', config('lmsail.head.title'))

@section('keywords', config('lmsail.head.keywords'))

@section('description', config('lmsail.head.description'))

@section('css')

@endsection

@section('content')
    <div class="row">
        <div class="col-md-12 grid-margin stretch-card">

            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">各平台订单实时流水统计</h4>
                    <div class="table-responsive">
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th class="text-left">#</th>
                                    <th class="text-left">所属用户</th>
                                    <th class="text-left">平台域名</th>
                                    <th class="text-left">平台IP</th>
                                    <th class="text-center">费率</th>
                                    <th class="text-center">今日数据统计</th>
                                    <th class="text-center">昨日数据统计</th>
                                    <th class="text-center">操作</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($platform as $key => $val)
                                <tr>
                                    <td class="text-left"><div class="disc bg-success"></div></td>
                                    <td class="text-left">{{ $val['person'] }}</td>
                                    <td class="text-left">
                                        <a href="{{ $val['domain'] }}" target="_blank">{{ $val['domain'] }}</a>
                                    </td>
                                    <td class="text-left">
                                        <a href="http://{{ $val['btaddress'] }}" target="_blank">{{ $val['ip'] }}</a>
                                    </td>
                                    <td class="text-center">{{ $val['rate'] * 100 }}%</td>
                                    <td class="text-left">
                                        <b>流水：<span class="text-danger">{{ $val['today']['TotalMoney'] ? $val['today']['TotalMoney'] : 0.00 }}</span></b> |
                                        <b>支付率：<span class="text-danger">{{ $val['today']['TotalPayRate'] ? $val['today']['TotalPayRate'] : '0%' }}</span></b> |
                                        <b>手续费：<span class="text-danger">{{ $val['today']['service'] ? $val['today']['service'] : 0.00 }}</span></b>
                                    </td>
                                    <td class="text-left">
                                        <b>流水：<span class="text-danger">{{ $val['yesterday']['yesTotalMoney'] ? $val['yesterday']['yesTotalMoney'] : 0.00 }}</span></b> |
                                        <b>支付率：<span class="text-danger">{{ $val['yesterday']['yesPayRate'] ? $val['yesterday']['yesPayRate'] : '0%' }}</span></b> |
                                        <b>手续费：<span class="text-danger">{{ $val['yesterday']['service'] ? $val['yesterday']['service'] : 0.00 }}</span></b>
                                    </td>
                                    <td class="text-center">
                                        <a data-href="{{ $val['client'] }}" data-title="{{ $val['person'] }}" onclick="showClient(this);" target="_blank">
                                            <label class="badge badge-dark">设备终端</label>
                                        </a>
                                    </td>
                                </tr>
                                @endforeach
                                <tr class="table-success">
                                    <td colspan="5" class="text-center">聚合统计</td>
                                    <td style="font-weight: bold;">总流水：<span class="text-danger">{{ $todayAmount }}</span> | 总手续费：<span class="text-danger">{{ $todayserviceAmount }}</span></td>
                                    <td style="font-weight: bold;">总流水：<span class="text-danger">{{ $yesAmount }}</span> | 总手续费：<span class="text-danger">{{ $yesServiceAmount }}</span></td>
                                    <td></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12 grid-margin stretch-card">

            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">下发平台数据统计</h4>
                    <div class="table-responsive">
                        <table class="table table-hover table-striped">
                            <thead>
                            <tr>
                                <th class="text-left">#</th>
                                <th class="text-center">所属用户</th>
                                <th class="text-center">平台域名</th>
                                <th class="text-center">平台IP</th>
                                <th class="text-center">收取费率</th>
                                <th class="text-center">昨日下发金额</th>
                                <th class="text-center">今日下发金额</th>
                                <th class="text-center">总计下发金额</th>
                                <th class="text-center">手续费</th>
                            </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="text-left"><div class="disc bg-success"></div></td>
                                    <td class="text-center">{{ $hair['person'] }}</td>
                                    <td class="text-center">
                                        <a href="{{ $hair['domain'] }}" target="_blank">{{ $hair['domain'] }}</a>
                                    </td>
                                    <td class="text-center">
                                        <a href="http://{{ $hair['btaddress'] }}" target="_blank">{{ $hair['ip'] }}</a>
                                    </td>
                                    <td class="text-center">{{ $hair['rate'] * 100 }}%</td>
                                    <td class="text-center text-danger"><b>{{ sprintf('%.2f', $hair['yesterday']) }}</b></td>
                                    <td class="text-center text-danger"><b>{{ sprintf('%.2f', $hair['today']) }}</b></td>
                                    <td class="text-center text-danger"><b>{{ sprintf('%.2f', $hair['total']) }}</b></td>
                                    <td class="text-center text-danger"><b>{{ sprintf('%.2f', $hair['total'] * 0.005) }}</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('js')
    <script src="{{ asset('layer/layer.js') }}"></script>
    <script>
        function showClient(obj) {
            layer.open({
                type: 2,
                title: '<b class="text-danger"><i class="icon-fire"></i> ' + $(obj).data("title") + ' - ' + $(obj).data("href") + '</b>',
                shadeClose: true,
                shade: 0.8,
                area: ['60%', '90%'],
                content: $(obj).data("href")
            });
        }
    </script>
@endsection
