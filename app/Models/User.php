<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Model;

class User extends Model
{
	protected $table = 'users';

	public function userfoudlog()
    {
        return $this->belongsTo(UserFoudLog::class);
    }

    public function userfoudday()
    {
        return $this->belongsTo(UserFoudDay::class);
    }
}
