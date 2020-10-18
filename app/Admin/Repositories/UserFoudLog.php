<?php

namespace App\Admin\Repositories;

use App\Models\UserFoudLog as Model;
use Dcat\Admin\Repositories\EloquentRepository;

class UserFoudLog extends EloquentRepository
{
    /**
     * Model.
     *
     * @var string
     */
    protected $eloquentClass = Model::class;
}
