<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class TiketController extends Controller
{
    public function beli_tiket(Request $request ){
        $rencanaliburan = RencanaLiburan::create([
            'nama_rencana' => $request->input('nama_rencana'),
            'deskripsi_rencana' => $request->input('deskripsi_rencana'),
            'user_id' => auth()->user()->id
            ]);

        $rencanaliburan->user_id;
        $rencanaliburan->save();

        return response()->json([
            'status' => '200 OK',
            'message' =>'post_rencana_liburan success',
            'data' => $rencanaliburan
        ]);
    }
}
