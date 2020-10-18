<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Model;

class UserFoudLog extends Model
{
	
    protected $table = 'user_foud_log';

    public function user()
    {
        return $this->hasOne(User::class, 'id' ,'user_id');
    }

}
