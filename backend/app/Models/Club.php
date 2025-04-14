<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Club extends Model
{
    public $timestamps = false;
    protected $fillable = ['name', 'foundation_date', 'img_club', 'stadium_name', 'img_stadium'];

    protected $hidden = [];
}
