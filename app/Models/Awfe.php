<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Awfe extends Model
{
    use HasFactory;
    protected $table = 'agent_awfe';
    protected $primaryKey = 'id';

    protected $fillable = [
        'nama', 'username_awfe','password_awfe',
    ];
    public $timestamps = false;

}
