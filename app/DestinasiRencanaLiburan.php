<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class DestinasiRencanaLiburan extends Model
{
    protected $table = 'destinasi_rencana_liburan';
    protected $primaryKey = "id";

    protected $fillable = [
        'rencana_liburan_id', 
        'tempat_wisata_id',
        'rencana_durasi_liburan',
        'tanggal_rencana_liburan'
    ];

    // public function users(){
    //     return $this->belongsTo(User::class, 'user_id');
    // }

    protected $casts = [
        'created_at' => 'datetime:Y-m-d H:i',
        'updated_at' => 'datetime:Y-m-d H:i'
    ];
}
