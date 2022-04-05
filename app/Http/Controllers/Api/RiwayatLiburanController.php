<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\User;
use App\PemesananTiketnew;

class RiwayatLiburanController extends Controller
{
    public function get_riwayat_liburan($user_id){
        $riwayatliburan = PemesananTiketnew::where('user_id',$user_id)->get();
        //RencanaLiburan::where('user_id',$user_id)->get();
        
        return response()->json([
            'status' => '200 OK',
            "message" => "riwayat liburan retrieved successfully.",
            "data" => $riwayatliburan
        ]);
    }
}
