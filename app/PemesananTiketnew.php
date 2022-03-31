<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PemesananTiketnew extends Model
{
    protected $table = 'transaksi';

    //protected $fillable = ['tanggal_pesan', 'jumlah_pesan', 'total_harga', 'keterangan', 'status'];
    protected $fillable = [
        'user_id', 
        'username_pemesan', 
        'phone_pemesan', 
        'tempat_wisata_id', 
        'bundling_tiket_id', //new
        'nama_tempat_wisata', 
        'tanggal_pesan', 
        'jumlah_pesan', 
        'total_harga', 
        'bukti', 
        'verify_status'];


    public function users(){
        return $this->belongsTo(User::class);
    }
    public function tempatwisatas(){
        return $this->belongsTo(TempatWisata::class);
    }
    // ///ini buat ngitung total harga
    // public function setTotal() {
    //     return $this->total_harga = $this->price * $this->banyak_tiket;
    // }


    protected $casts = [
        'created_at' => 'datetime:Y-m-d H:i',
        'updated_at' => 'datetime:Y-m-d H:i'
    ];
}
