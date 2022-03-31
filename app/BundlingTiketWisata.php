<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class BundlingTiketWisata extends Model
{
    protected $table = 'bundling_tiket';
    protected $primaryKey = "id";
    protected $fillable = [
        'tempat_wisata_id',
        'nama_bundling', 
        'detail_bundling', 
        'harga_bundling',
        'foto_bundling',
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
        'foto_bundling' => 'array',
        'created_at' => 'datetime:Y-m-d H:i',
        'updated_at' => 'datetime:Y-m-d H:i'
    ];
}