<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AjakTemanLiburan extends Model
{
    protected $table = 'ajakteman_rencana_liburan';
    protected $primaryKey = "id";

    protected $fillable = [
        'rencana_liburan_id', 
        'body',
        'id_pengirim_ajakan',
        'id_penerima_ajakan',
        'status_ajakan'
        // 'id_ajakan',
    ];

    // public function users(){
    //     return $this->belongsTo(User::class, 'user_id');
    // }

    protected $casts = [
        'created_at' => 'datetime:Y-m-d H:i',
        'updated_at' => 'datetime:Y-m-d H:i'
    ];
}