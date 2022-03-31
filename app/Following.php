<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Following extends Model
{
    protected $table = 'following';

    protected $fillable = [
        'user_id',
        'user_following_id'

    // public function users(){
    //     return $this->belongsToMany(User::class, 'user_id');
    // }
    ];  
    
    protected $casts = [
        'created_at' => 'datetime:Y-m-d H:i',
        'updated_at' => 'datetime:Y-m-d H:i'
    ];
}
