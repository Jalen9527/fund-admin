<?php

namespace App\Admin\Controllers;

use App\Admin\Metrics\Examples;
use App\Http\Controllers\Controller;
use Dcat\Admin\Controllers\Dashboard;
use Dcat\Admin\Layout\Column;
use Dcat\Admin\Layout\Content;
use Dcat\Admin\Layout\Row;
use Dcat\Admin\Widgets\Card;
use Dcat\Admin\Widgets\Markdown;

class HomeController extends Controller
{
    public function index(Content $content)
    {


        return $content
            ->header('主页')
            ->description('管理后台主页')
            ->body(function (Row $row) {
                $row->column(6, function (Column $column) {
                    $column->row(Dashboard::title());
                    $column->row(new Examples\Tickets());
                });

                $row->column(6, function (Column $column) {
                    $server_config = [
                        '本站域名'     =>  $_SERVER['SERVER_NAME'],
                        '服务器版本'     =>  php_uname('s').php_uname('r'),
                        '服务器操作系统' =>  php_uname(),
                        'PHP版本'        =>  PHP_VERSION,
                        '获取Zend版本'  =>  Zend_Version(),
                        'Laravel版本'   =>  $laravel = app()::VERSION,
                        'PHP运行方式'   =>  php_sapi_name(),
                        '服务器当前时间'=> date("Y-m-d H:i:s"),    
                        '脚本运行占用最大内存'=>get_cfg_var ("memory_limit")?get_cfg_var("memory_limit"):"无",
                        '获取服务器解译引擎'=>$_SERVER['SERVER_SOFTWARE'],
                        '获取服务器CPU数量'=>$_SERVER['PROCESSOR_IDENTIFIER']??'',
                    ];
                    $text = '';
                    foreach ($server_config as $key => $value) {
                        $text .= $key."：" .$value."\n\n";
                    }

                    $column->row(new Examples\ProductOrders());
                    $column->row(
                    Card::make(
                        Markdown::make($text)
                    ));
                });
            });
    }

   
}
