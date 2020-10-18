<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Model;

class UserFoudDay extends Model
{
	
    protected $table = 'user_foud_day';

    public function user()
    {
        return $this->hasOne(User::class, 'id' ,'user_id');
    }
    
}
