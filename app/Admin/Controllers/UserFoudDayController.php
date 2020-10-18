<?php

namespace App\Admin\Controllers;

use App\Admin\Repositories\UserFoudDay;
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

class UserFoudDayController extends AdminController
{

    // public function index(Content $content)
    // {
       

    //     return $content->header('基金统计')
    //         ->description('基金走势图')
    //         ->body(
    //         Card::make('我的基金走势', MyBar::make())
    //     )->body($this->grid());
    // }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {

        return Grid::make(new UserFoudDay(['user']), function (Grid $grid) {
            $user_id = Admin::user()->id;
            if($user_id != 1) {
                $grid->model()->where('user_id' , $user_id);
                $grid->disableBatchDelete();
            } 
            $grid->column('id')->sortable();
            $grid->column('user_id');
            $grid->column('user.name' ,'用户名');
            $grid->column('fund_sum');
            $grid->column('day');
            $grid->column('created_at');
            $grid->column('updated_at')->sortable();

            $grid->filter(function (Grid\Filter $filter) {
                $filter->equal('id');

            });

            
            // 禁用
            $grid->withBorder();
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
        return Show::make($id, new UserFoudDay(), function (Show $show) {
            $show->field('id');
            $show->field('fund_sum');
            $show->field('user_id');
            $show->field('user_name');
            $show->field('created_at');
            $show->field('updated_at');
        });
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        return Form::make(new UserFoudDay(), function (Form $form) {
            $form->display('id');
            $form->text('fund_sum');
            $form->text('user_id');
            $form->text('user_name');

            $form->display('created_at');
            $form->display('updated_at');
        });
    }
}
