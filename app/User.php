<?php

namespace App;

use Laravel\Passport\HasApiTokens;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

class User extends Authenticatable
{
    use HasAPiTokens, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */

    protected $table = "users";
    protected $primaryKey = "id";
    
    protected $guarded = [];

    protected $fillable = [
        'fullname', 'username', 'email', 'password', 'phone', 'photo' 
    ];


    // public function pemesanantiket()
    // {
    //     return $this->hasMany(PemesananTiket::class); //'user_id'
    // }

    // public function rencanaliburan()
    // {
    //     return $this->hasMany(RencanaLiburan::class, 'user_id');
    // }

    // public function reviewtempatwisatas()
    // {
    //     return $this->hasMany(ReviewTempatWisata::class, 'user_id');
    // }


    // public function follower()
    // {
    //     return $this->hasMany(Follow::class, 'user_id');
    // }
    // public function following()
    // {
    //     return $this->hasMany(Follow::class, 'user_id');
    // }

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
        'created_at' => 'datetime:Y-m-d H:i',
        'updated_at' => 'datetime:Y-m-d H:i'
    ];
}
