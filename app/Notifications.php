<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Notifications extends Model
{
    protected $table = 'notifications';
    protected $primaryKey = "id";

    protected $fillable = [
        'type', 
        'notifiable_type',
        'notifiable_id',
        'data',
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
