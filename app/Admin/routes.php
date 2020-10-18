<?php

use Illuminate\Routing\Router;
use Illuminate\Support\Facades\Route;
use Dcat\Admin\Admin;

Admin::routes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
], function (Router $router) {
    $router->resource('/', 'HomeController');

    $router->resource('/home', 'HomeController');

    //用户列表
    $router->resource('user/list', 'UserController');

    //基金走势
    $router->resource('foud/day', 'UserFoudDayController');

    //基金记录 UserFoudLogController
    $router->resource('foud/log', 'UserFoudLogController');


});
