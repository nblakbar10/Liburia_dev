<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\User;
use App\TempatWisata;
use App\FotoTempatWisata;
use App\BundlingTiketWisata;
use App\Artikel;
use App\RencanaLiburan;
use App\ReviewWisata;
use Illuminate\Support\Facades\Auth;
use Validator;

class DetailController extends Controller
{


    public function get_tempat_wisata()
    {
        $tempatwisata = TempatWisata::get();
        $bundlingtiketjoin = TempatWisata::leftjoin('bundling_tiket','bundling_tiket.tempat_wisata_id', 'tempat_wisata.id')
        ->select('tempat_wisata.*','bundling_tiket.tempat_wisata_id','bundling_tiket.nama_bundling', 'bundling_tiket.detail_bundling', 
        'bundling_tiket.foto_bundling', 'bundling_tiket.harga_bundling')
        ->get();

        foreach($tempatwisata as $item){
            $data_bundling_tiket = null;
            foreach($bundlingtiketjoin as $data){
                if($item->id == $data->tempat_wisata_id){
                    $data_bundling_tiket[] = [
                        "tempat_wisata_id" => $data->tempat_wisata_id,
                        "nama_bundling" => $data->nama_bundling,
                        "detail_bundling" => $data->detail_bundling,
                        "foto_bundling" => $data->foto_bundling,
                        "harga_bundling" => $data->harga_bundling
                    ];
                }
            }
           
            $joinbaru[] = [
                'id' => $item->id,
                'nama_wisata' => $item->nama_wisata,
                'alamat_wisata' => $item->alamat_wisata,
                'foto' => $item->foto,
                'fasilitas_wisata' => $item->fasilitas_wisata,
                'harga_wisata' => $item->harga_wisata,
                'created_at' => $item->created_at,
                'updated_at' => $item->updated_at,
                'data_bundling_tiket' => $data_bundling_tiket
            ];
        }

        return response()->json([
            'status' => '200 OK',
            'message' =>'get_tempat_wisata_and_bundling success',
            'data' => $joinbaru
        ]);
    }

    public function get_bundling_tiket($tempat_wisata_id){ //id tempat_wisata_id nya
        $bundlingtiket = BundlingTiketWisata::where('tempat_wisata_id', $tempat_wisata_id)->get();

        return response()->json([
            'status' => '200 OK',
            'message' =>'get_tempat_wisata_and_bundling success',
            'data' => $bundlingtiket
        ]);
    }
    
    // public function get_review_wisata(){
    //     $reviewwisata = ReviewWisata::orderBy('id', 'desc')->get();
    //     return response()->json([
    //         'status' => '200 OK',
    //         'message' =>'get_review_wisata success',
    //         'data' => $reviewwisata
    //     ]);
    // }

    public function get_artikel(){
        $artikel = Artikel::orderBy('id', 'desc')->get();
        return response()->json([
            'status' => '200 OK',
            'message' =>'get_artikel success',
            'data' => $artikel
        ]);
    }

    // public function input_artikel(Request $request)
    // {
    //     // $tempat = TempatWisata::findOrFail($id);

    //     $validator = Validator::make($request->all(), [
    //         // 'tempat_wisata_id' => 'required',
    //         'nama_bundling' => 'required',
    //         'detail_bundling' => 'required',
    //         'foto_bundling' => 'required',
    //         'foto_bundling.*' => 'mimes:jpeg,jpg,png',
    //         'harga_bundling' => 'required',
    //     ]);

    //     if ($validator->fails()) {    
    //         return response()->json($validator->messages(), 400);
    //     }

    //     $data = [];
    //     if($request->hasfile('foto_bundling'))
    //     {
    //         foreach($request->file('foto_bundling') as $bundlingprofile)
    //         {
    //             $host = $request->getSchemeAndHttpHost();
    //             $fileName_bundling = $host.'/storage/wisata/'.time().'_'.$bundlingprofile->getClientOriginalName();
    //             $bundlingprofile->move(public_path('storage/wisata'), $fileName_bundling);
    //             $data[] = $fileName_bundling;  
    //         }
    //     }

    //     $inputbundling = new BundlingTiketWisata();
    //     $inputbundling->tempat_wisata_id = $id;
    //     $inputbundling->nama_bundling = $request->nama_bundling;
    //     $inputbundling->detail_bundling = $request->detail_bundling;
    //     $inputbundling->foto_bundling = $data;
    //     $inputbundling->harga_bundling = $request->harga_bundling;
    //     $inputbundling->save();

    //     $data = [
    //         'message' => 'Success',
    //         'data' => $inputbundling
    //     ];     

    //     return response()->json($data, 200);
    // }


    public function get_user_badge(){

    }
}
