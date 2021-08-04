<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Agent extends Model
{
    use HasFactory;
    protected $table = 'agent';
    protected $primaryKey = 'id';

    protected $fillable = [
        'segmen', 'login_avaya', 'nik_csdm', 'perner','nama','gender','id_site_awal','id_TL','no_telkomsel','no_wa','ket'
    ];
    public $timestamps = true;

    public function getSiteAwalId() 
    {
        return $this->belongsTo(SiteAwal::class,'id_site_awal');
    }
    public function getTLId() 
    {
        return $this->belongsTo(TL::class, 'id_TL');
    }
}
