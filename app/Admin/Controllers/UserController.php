<?php

namespace App\Admin\Controllers;

use App\Admin\Repositories\User;
use App\Models\UserFoudLog;
use App\Models\UserFoudDay;
use App\Models\User as ModelUser;
use Dcat\Admin\Form;
use Dcat\Admin\Grid;
use Dcat\Admin\Show;
use Dcat\Admin\Controllers\AdminController;
use App\Models\AdminUser;
use App\Models\AdminRoleUser;
use Illuminate\Support\Facades\DB;

class UserController extends AdminController
{
    protected $day;
    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Grid::make(new User(), function (Grid $grid) {
            $grid->column('id')->sortable();
            $grid->column('name');
            $grid->column('fund_amount');
            $grid->column('fund_rate');
            $grid->column('fund_sum');
            $grid->column('created_at');
            $grid->column('updated_at')->sortable();

            $grid->filter(function (Grid\Filter $filter) {
                $filter->equal('id');

            });
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
        return Show::make($id, new User(), function (Show $show) {
            $show->field('id');
            $show->field('fund_amount');
            $show->field('fund_rate');
            $show->field('fund_sum');
            $show->field('name');
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
        return Form::make(new User(), function (Form $form) {
            $form->display('id');
            if ($form->isCreating()) {
                $form->text('name')->help('创建用户后，初始密码为123456，如需修改密码请在【系统】->【管理员】处修改，新增后不可编辑！');
            }else {
                $form->display('name')->help('用户名不可编辑');
            }
            
            $form->number('fund_amount')->rules('required');
            $form->rate('fund_rate')->rules('required');

            if (!$form->isCreating()) {
                $form->date('day')->default(date("Y-m-d"),true)->help('选择日期,默认为今天');
                $form->display('fund_sum')->help('不可编辑，保存后会重新进行计算');
                $form->text('mark')->help('输入本次操作的备注');
            }
            $form->hidden('fund_sum')->help('不可编辑，保存后会重新进行计算');

            // $form->display('created_at');
            // $form->display('updated_at');
            // $form->ignore(['mark']); //忽略该字段

            //保存之前执行
            $form->saving(function (Form $form) {

                // 判断是否是新增操作
                if ($form->isCreating()) {
                   $isHas = AdminUser::where('username',$form->name)->count();
                    if($isHas) {
                        return $form->error('用户名已经存在');
                    }
                } else {
                    //编辑
                    //判断是否有改动
                    // $userInfo = ModelUser::where('id', $form->getKey())->first();
                    // if(isset($userInfo) &&  $userInfo->fund_amount == $form->fund_amount && $userInfo->fund_rate == $form->fund_rate) {
                    //     return $form->error('已经保存过了或者没有改动任何数据！');
                    // }
                    $id = $form->getKey();
                    // if($id){
                    //      //添加当天操作
                    //     $dayId = UserFoudDay::where(['user_id'=>$id , 'day'=>date('Y-m-d')])->value('id');
                    //     $fundDayModel =  UserFoudDay::find($dayId);//
                    //     $fundDayModel->user_id = $id;
                    //     $fundDayModel->fund_sum = $form->fund_sum;
                    //     $fundDayModel->day = $form->day;
                    //     $fundDayModel->save();
                        
                    // }
                    // dd($form->day);
                }
                $this->day = $form->day;
                //去掉day
                $form->deleteInput('day');

                $form->fund_rate = floatval($form->fund_rate);
                $form->fund_sum = $form->fund_amount + ( $form->fund_amount * ($form->fund_rate/100) );
                // dd( $form->fund_sum   );exit;
            });

            //保存后回调
            $form->saved(function (Form $form, $result) {

                // 判断是否是新增操作
                if ($form->isCreating()) {
                    // 自增ID
                    $newId = $result;

                    if ($newId) {
                        //创建表
                        DB::beginTransaction(); //开启事务
                        try {
                            //新增管理后台用户
                            $adminModel = new AdminUser();
                            $adminModel->username = $form->name;
                            $adminModel->name = $form->name;
                            $adminModel->password = '$2y$10$nT1D7ZFzIlbDCPyyR9cX/uyK1Tbcnn0eQTWpBw/nNLBBVNq9CdPNK';
                            $adminModel->id = $newId;
                            $insert = $adminModel->save();

                            $roleModel = new AdminRoleUser();
                            $roleModel->role_id = '2';
                            $roleModel->user_id = $newId;
                            $res = $roleModel->save();

                            if($insert && $res){
                                DB::commit();   //成功，提交事务
                            }

                        } catch( \Exception $e) {
                            DB::rollback(); //失败，回滚事务
                            return $form->error('数据保存失败'.$e->getMessage());
                        }
                    }
                }

                //编辑操作
                $id = $form->getKey();
                //添加记录
                if ($id) {

                    $day = $this->day ? $this->day :date("Y-m-d");
                    //添加当天操作
                    $dayId = UserFoudDay::where([ 'user_id'=>$id , 'day'=>$day ])->value('id');
                    $fundDayModel =  UserFoudDay::find($dayId);//
                    if(!$fundDayModel) {
                        $fundDayModel = new UserFoudDay();
                    }
                    $fundDayModel->user_id = $id;
                    $fundDayModel->fund_sum = $form->fund_sum;
                    $fundDayModel->day = $day;
                    $fundDayModel->save();

                    //记录单次操作
                    $logFoud = new UserFoudLog();

                    $logFoud->user_id = $id;
                    $logFoud->fund_amount = $form->fund_amount;
                    $logFoud->fund_rate = $form->fund_rate;
                    $logFoud->fund_sum = $form->fund_sum;
                    $logFoud->fund_mark = $form->mark;
                    $logFoud->day = $day;
                    $logFoud->type = 2;

                    $loginfo  = $logFoud::where('user_id',$logFoud->user_id)->orderBy('created_at','desc')->first();
                    if( isset($loginfo) ) {
                        $fund_amount = $loginfo->fund_amount;
                        $fund_sum = $loginfo->fund_sum;
                    }else {
                        $fund_amount = 0;
                        $fund_sum = 0;
                    }

                    $amount_num = ($form->fund_amount - $fund_amount);
                    $logFoud->fund_sum_log = $form->fund_sum - $fund_sum;

                    if(  $amount_num>0 ) {
                        $logFoud->action = 1;
                    } else if( $amount_num < 0) {
                        $logFoud->action = 2;
                    } else {
                        $logFoud->action = 0;
                    }
                    // dd( $fund_amount_log ,$bf_fund_amount ,$form->fund_amount);

                    $logFoud->save();
                }


            });

            //删除前回调
            // $form->deleting(function (Form $form) {
            //     // 获取待删除行数据，这里获取的是一个二维数组
            //     $data = $form->model()->toArray();
            //     dd($data);exit;
            // });


            //删除后回调
            $form->deleted(function (Form $form, $result) {
                // 获取待删除行数据，这里获取的是一个二维数组
                $data = $form->model()->toArray();

                // 通过 $result 可以判断数据是否删除成功
                if (! $result) {
                    return $form->error('数据删除失败');
                }

                //删除admin_user的数据
                foreach ($data as $key => $value) {
                    if($value['id']){
                        AdminUser::where('id' , $value['id'])->delete();
                    }
                }
                

                // 返回删除成功提醒，此处跳转参数无效
                return $form->success('删除成功');
            });

        });
    }
}
