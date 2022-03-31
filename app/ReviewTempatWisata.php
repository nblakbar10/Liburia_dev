<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

// class ReviewTempatWisata extends Model
// {
    
//     protected $casts = [
//         'created_at' => 'datetime:Y-m-d H:i',
//         'updated_at' => 'datetime:Y-m-d H:i'
//     ];
// }


class ReviewTempatWisata extends Model
{
    protected $table = 'review_tempat_wisata';
    protected $primaryKey = "id";

    protected $fillable = [
        'user_id',
        'tempat_wisata_id',
        'review', 
        'rating',
        'verify_status'
    ];

    // public function users(){
    //     return $this->belongsTo(User::class, 'user_id');
    // }

    protected $casts = [
        'created_at' => 'datetime:Y-m-d H:i',
        'updated_at' => 'datetime:Y-m-d H:i'
    ];
}