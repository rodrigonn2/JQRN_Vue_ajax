<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Player extends Model
{
    public $timestamps = false;
    protected $fillable = ['club_id', 'player_name', 'img_player', 'age', 'position'];

    protected $hidden = [];
}
