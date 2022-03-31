<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class FotoTempatWisata extends Model
{
    protected $table = 'foto_tempat_wisata';
    protected $primaryKey = "id";
    protected $fillable = [
        'tempat_wisata_id', 
        'foto_tempat_wisata'
        // 'foto_wisata_id',
        // 'bundling_tiket_id',
    ];


    // public function pemesanantiketnew()
    // {
    //     return $this->hasMany(PemesananTiketnew::class, 'tempat_wisata_id');
    // }
    
    // public function BundlingTiket(){
    //     return $this->hasMany(BundlingTiket::class);
    // }
    protected $casts = [
        'created_at' => 'datetime:Y-m-d H:i',
        'updated_at' => 'datetime:Y-m-d H:i'
    ];
}