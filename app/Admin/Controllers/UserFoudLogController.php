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
use Dcat\Admin\Layout\Row;
use Dcat\Admin\Layout\Column;
use Faker\Factory;
use Dcat\Admin\Widgets\Tab;
// use App\Models\UserFoudLog as logModel;
use Illuminate\Support\Facades\DB;

class UserFoudLogController extends AdminController
{

    public function index(Content $content)
    {
        $setDay = request('days');
        
        
        if(isset($setDay)){
            $setDay = intval($setDay);

        }
        $faker = Factory::create();
        return $content->header('基金统计')
            ->description('基金走势图')
            ->body(function (Row $row) use ($faker) {
                $row->column(12, $this->buttons());
            })
            ->body(Card::make('我的基金走势', MyBar::make(null,[],$setDay)))
            ->body($this->grid());
    }

    protected function buttons()
    {
        $day = request('days');
        $dayArr = [1,3,6,12];
        $uid = request('user_id');

        $html = '<div class="box">
            <div class="box-body collapse show" style="">
                <h3 class="box-title" style="float:left;margin-right:1rem;font-size:1.2rem;line-height: 2.5rem;">选择时间</h3>
            ';
        foreach ($dayArr as $key => $value) {
            $butStyle = $day == $value ? 'btn-primary' : 'btn-white' ;
            $html .= '<a href="?days='.$value.'&user_id='.$uid.'"><div class="pull-left" style="margin-right:10px" ><button class="btn '.$butStyle.'">'.$value.'月</button></div></a>';

        }
        $html .= '
            </div>
        </div>
        ';
        $html .= " ";
                    

        return $html;

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
            $getUid = request('user_id');
            if($user_id != 1  ) {

                $grid->model()->where('user_id' , $user_id);
                $grid->disableBatchDelete();
                // 禁用复选框
                $grid->disableRowSelector();

            } else if($getUid) {
                
                $grid->model()->where('user_id' , $getUid);

            } else {
                
                //只查询最新一条查询
                $groupArr = DB::select("select SUBSTRING_INDEX(group_concat(id order by id desc),',',1) as gId from `user_foud_log` group by user_id");
                foreach ($groupArr as $key => $v) {
                    $inArr[] = $v->gId;
                }
                $grid->model()->whereIn('id' , $inArr);

            }

            $grid->model()->orderBy('updated_at', 'desc');
            // $grid->column('id')->sortable();
            if($user_id == 1){
                $grid->column('user_id');
            }  
            
            if($user_id == 1  ) {
                $grid->column('user.name', '用户名')->display(function ($value) {
                    return '<a href="'.admin_url('foud/log?days=1&user_id='.$this->user_id).'" >'.$value.'</a>';
                });
                
            }

            $grid->column('fund_amount');
            $grid->column('fund_rate');
            $grid->column('fund_sum');
            $grid->column('fund_sum_log')->display(function($num) {
                if($num>0) return "+".number_format($num,2); else return number_format($num,2);
            });
            $grid->column('action')->using([0 => '净值率变动', 2 => '赎回', 1 => '买入'])->label([
                    'default' => 'primary', // 设置默认颜色，不设置则默认为 default

                    0 => 'primary',
                    2 => 'danger',
                    1 => 'success',
                ]);
            $grid->column('fund_mark');
            $grid->column('updated_at');
            // $grid->column('created_at');

            $grid->filter(function (Grid\Filter $filter) {
                // $filter->equal('id');
                // 更改为 panel 布局
                $filter->panel();
                $filter->expand();
                
                // $filter->between('created_at')->date();
                // $filter->between('day');

            });

            $grid->selector(function (Grid\Tools\Selector $selector) {
                $selector->selectOne('action', '', [
                    '' => '所有记录',
                    0 => '净值率变动',
                    2 => '赎回记录',
                    1 => '购买记录',
                ]);
            });

            $grid->withBorder();
            // 禁用
            $grid->disableActions();
            $grid->disableCreateButton(); //隐藏新增按钮
            $grid->tools('<style>
                .d-block{ display:none !important; }
                .grid-selector .select-options a.active{
                    color:#fff;
                    background-color: #5c6bc6;
                    border-radius: 0.5rem;
                    padding: 0.5rem;
                }
                .select-options{
                    margin-left: 0px !important;
                }
                .clear{
                    display:none;
                }
             </style>');  //.btn-group{ display:none}  <script>$(".select-options>ul>li:eq(0)").addClass("active")</script>

            $select = request()->all();
            if(!isset($select['_selector']['action'])) {
                $grid->tools('<style>
                    .select-options ul li:first-child a {
                    color: #fff;
                    font-weight: 700;
                    background-color: #5c6bc6;
                    border-radius: 0.5rem;
                    padding: 0.5rem;
                } </style>');
            }
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
