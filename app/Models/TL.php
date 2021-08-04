<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TL extends Model
{
    use HasFactory;
    protected $table = 'tl';
    protected $primaryKey = 'id';

    protected $fillable = [
        'nama','nik_csdm', 'jml_postpaid_agent','jml_prepaid_agent','jml_gender_agent_L',
        'jml_gender_agent_P','total'
    ];
    public $timestamps = true;

    public function getAgentId() 
    {
        return $this->hasMany(Agent::class);
    }
}
