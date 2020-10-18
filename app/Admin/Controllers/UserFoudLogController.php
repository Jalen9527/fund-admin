<?php

namespace App\Admin\Controllers;

use App\Admin\Repositories\UserFoudLog;
use Dcat\Admin\Form;
use Dcat\Admin\Grid;
use Dcat\Admin\Show;
use Dcat\Admin\Controllers\AdminController;

use App\Admin\Metrics\Examples\NewUsers;
use App\Admin\Repositories\Report;
use Dcat\Admin\Layout\Content;

use App\Admin\Widgets\Charts\MyBar;
use Dcat\Admin\Widgets\Card;
use Dcat\Admin\Admin;

class UserFoudLogController extends AdminController
{

    public function index(Content $content)
    {

        return $content->header('基金统计')
            ->description('基金走势图')
            ->body(
            Card::make('我的基金走势', MyBar::make())
        )->body($this->grid());
    }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Grid::make(new UserFoudLog(['user']), function (Grid $grid) {
            $user_id = Admin::user()->id;
            if($user_id != 1) {
                $grid->model()->where('user_id' , $user_id);
                $grid->disableBatchDelete();
                
            }
            $grid->model()->orderBy('id', 'desc');
            $grid->column('id')->sortable();
            $grid->column('user_id');
            // 显示一对一数据
            $grid->column('user.name', '用户名');
            $grid->column('fund_amount');
            $grid->column('fund_rate');
            $grid->column('fund_sum');
            $grid->column('fund_sum_log')->display(function($num) {
                if($num>0) return "+".$num; else return $num;
            });
            $grid->column('action')->using([0 => '净值率变动', 2 => '赎回', 1 => '买入'])->label([
                    'default' => 'primary', // 设置默认颜色，不设置则默认为 default

                    0 => 'primary',
                    2 => 'danger',
                    1 => 'success',
                ]);
            $grid->column('fund_mark');
            $grid->column('day');
            $grid->column('created_at');
        
            $grid->filter(function (Grid\Filter $filter) {
                $filter->equal('id');
        
            });
            $grid->withBorder();
            // 禁用
            $grid->disableActions();
            $grid->disableCreateButton(); //隐藏新增按钮

        });
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     *
     * @return Show
     */
    protected function detail($id)
    {
        return Show::make($id, new UserFoudLog(), function (Show $show) {
            $show->field('id');
            $show->field('fund_amount');
            $show->field('fund_rate');
            $show->field('fund_sum');
            $show->field('mark');
            $show->field('user_id');
        });
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        return Form::make(new UserFoudLog(), function (Form $form) {
            $form->display('id');
            $form->text('fund_amount');
            $form->text('fund_rate');
            $form->text('fund_sum');
            $form->text('mark');
            $form->text('user_id');
        });
    }
}
