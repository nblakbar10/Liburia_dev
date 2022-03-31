<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class RencanaLiburan extends Model
{
    protected $table = 'rencana_liburan';
    protected $primaryKey = "id";

    protected $fillable = [
        'nama_rencana', 
        'user_id',
        // 'traveler_user_id',
        // 'tourguide_user_id',
        'deskripsi_rencana',
        'destinasi_rencana_liburan_id'
    ];

    // public function users(){
    //     return $this->belongsTo(User::class, 'user_id');
    // }

    protected $casts = [
        'created_at' => 'datetime:Y-m-d H:i',
        'updated_at' => 'datetime:Y-m-d H:i'
    ];
}
