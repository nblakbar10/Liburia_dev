<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TempatWisata extends Model
{
    protected $table = 'tempat_wisata';
    protected $primaryKey = "id";
    protected $fillable = [
        'nama_wisata', 
        'alamat_wisata', 
        'foto', 
        'fasilitas_wisata', 
        'harga_wisata',
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