<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SiteAwal extends Model
{
    use HasFactory;
    protected $table = 'site_awal';
    protected $primaryKey = 'id';

    protected $fillable = [
        'nama_site'
    ];
    public $timestamps = true;

    public function getAgentId() 
    {
        return $this->hasMany(Agent::class);
    }
}
