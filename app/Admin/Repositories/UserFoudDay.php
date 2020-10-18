<?php

namespace App\Admin\Repositories;

use App\Models\UserFoudDay as Model;
use Dcat\Admin\Repositories\EloquentRepository;

class UserFoudDay extends EloquentRepository
{
    /**
     * Model.
     *
     * @var string
     */
    protected $eloquentClass = Model::class;
}
