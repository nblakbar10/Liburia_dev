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


class FotoReviewTempatWisata extends Model
{
    protected $table = 'foto_review_tempat_wisata';
    protected $primaryKey = "id";

    protected $fillable = [
        'user_id',
        'review_tempat_wisata_id',
        'foto_detail_review'
    ];

    // public function users(){
    //     return $this->belongsTo(User::class, 'user_id');
    // }

    protected $casts = [
        'foto_detail_review' => 'array',
        'created_at' => 'datetime:Y-m-d H:i',
        'updated_at' => 'datetime:Y-m-d H:i'
    ];
}