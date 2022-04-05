<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\User;
use App\FotoTempatWisata;
use App\TempatWisata;
use Illuminate\Support\Facades\Auth;
use Validator;
use App\BundlingTiketWisata;

class InputTempatWisataController extends Controller
{
    public function input_tempat_wisata(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'nama_wisata' => 'required',
            'alamat_wisata' => 'required',
            'foto' => 'required',
            'foto.*' => 'mimes:jpeg,jpg,png',
            'fasilitas_wisata' => 'required',
            'harga_wisata' => 'required',
        ]);

        if ($validator->fails()) {    
            return response()->json($validator->messages(), 400);
        }

        $data = [];
        if($request->hasfile('foto'))
        {
            foreach($request->file('foto') as $wisataprofile)
            {
                $host = $request->getSchemeAndHttpHost();
                $fileName_wisata = $host.'/storage/wisata/'.time().'_'.$wisataprofile->getClientOriginalName();
                $wisataprofile->move(public_path('storage/wisata'), $fileName_wisata);
                $data[] = $fileName_wisata;  
            }
        }

        $inputtempatwisata = new TempatWisata();
        $inputtempatwisata->nama_wisata = $request->nama_wisata;
        $inputtempatwisata->alamat_wisata = $request->alamat_wisata;
        $inputtempatwisata->foto = $data;
        $inputtempatwisata->fasilitas_wisata = $request->fasilitas_wisata;
        $inputtempatwisata->harga_wisata = $request->harga_wisata;
        $inputtempatwisata->save();

        $data = [
            'message' => 'Success',
            'data' => $inputtempatwisata
        ];     

        return response()->json($data, 200);
    }

    public function input_bundling_tiket_wisata(Request $request, $id)
    {
        $tempat = TempatWisata::findOrFail($id);

        $validator = Validator::make($request->all(), [
            // 'tempat_wisata_id' => 'required',
            'nama_bundling' => 'required',
            'detail_bundling' => 'required',
            'foto_bundling' => 'required',
            'foto_bundling.*' => 'mimes:jpeg,jpg,png',
            'harga_bundling' => 'required',
        ]);

        if ($validator->fails()) {    
            return response()->json($validator->messages(), 400);
        }

        $data = [];
        if($request->hasfile('foto_bundling'))
        {
            foreach($request->file('foto_bundling') as $bundlingprofile)
            {
                $host = $request->getSchemeAndHttpHost();
                $fileName_bundling = $host.'/storage/wisata/'.time().'_'.$bundlingprofile->getClientOriginalName();
                $bundlingprofile->move(public_path('storage/wisata'), $fileName_bundling);
                $data[] = $fileName_bundling;  
            }
        }

        $inputbundling = new BundlingTiketWisata();
        $inputbundling->tempat_wisata_id = $id;
        $inputbundling->nama_bundling = $request->nama_bundling;
        $inputbundling->detail_bundling = $request->detail_bundling;
        $inputbundling->foto_bundling = $data;
        $inputbundling->harga_bundling = $request->harga_bundling;
        $inputbundling->save();

        $data = [
            'message' => 'Success',
            'data' => $inputbundling
        ];     

        return response()->json($data, 200);
    }

    // public function post_foto_tempat_wisata(Request $request, $tempat_wisata_id){
    //     $validator = Validator::make($request->all(), [
    //         'tempat_wisata_id' => 'required',
    //         'foto_tempat_wisata' => 'required',
    //     ]);

    //     if ($validator->fails()) {    
    //         return response()->json($validator->messages(), 400);
    //     }

    //     if($request->hasfile('foto_tempat_wisata'))
    //     {
    //        foreach($request->file('foto_tempat_wisata') as $file)
    //        {
    //             $host = $request->getSchemeAndHttpHost();
    //         //    $name=$file->getClientOriginalName();
    //             $fileName_fotowisata = $host.'/storage/wisata/'.time().'_'.$wisata_picture->getClientOriginalName();
    //         //    $file->move(public_path().'/files/', $name);  
    //             $wisata_picture->move(public_path('storage/wisata'), $fileName_fotowisata);
    //             $data[] = $fileName_fotowisata;  
    //        }
    //     }
    //     $multibaru = $fileName_fotowisata->foto_tempat_wisata=json_encode($data);


    //     // $host = $request->getSchemeAndHttpHost();
    //     // $wisata_picture = $request->foto_tempat_wisata;
    //     // $fileName_fotowisata = $host.'/storage/wisata/'.time().'_'.$wisata_picture->getClientOriginalName();
    //     // $wisata_picture->move(public_path('storage/wisata'), $fileName_fotowisata);

    //     $postfototempatwisata = FotoTempatWisata::create([
    //         'tempat_wisata_id' => $request->$tempat_wisata_id,
    //         'foto_tempat_wisata' => $multibaru //$request->$fileName_fotowisata, 
    //         ]);

    //     return response()->json([
    //         'status' => '200 OK',
    //         'message' =>'post foto tempat wisata detail success',
    //         'data' => $postfototempatwisata
    //     ]);
    // }
}
