<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Validator;
use App\User;
use App\PemesananTiketnew;
use App\BundlingTiketWisata;
use App\TempatWisata;

//bikin Route : 
//- get_pemesanan_tiket
//- post_pemesanan_tiket

class PemesananTiketController extends Controller
{
    public function get_pemesanan_tiket(){
        //$pemesanantiket = PemesananTiketnew::where('user_id',$user_id)->get();
        $pemesanantiket = PemesananTiketnew::where('user_id', auth()->user()->id)->get();
        //RencanaLiburan::where('user_id',$user_id)->get();
        return response()->json([
            'status' => '200 OK',
            "message" => "data pemesanan tiket retrieved successfully.",
            "data" => $pemesanantiket
        ]);
    }

    public function delete_riwayat_pemesanan($id) {
        $riwayatpemesanan = PemesananTiketNew::findOrFail($id);
        if($riwayatpemesanan)
           $riwayatpemesanan->delete(); 
        else
            return response()->json(error);
        return response()->json([
            'status' => '200 OK',
            'message' =>'delete_riwayat_pemesanan success',
            'data' => $riwayatpemesanan
        ]);
    }
    


//berarti si mobile musti bikin manipulasi buat bisa ngelempar id si tempat wisata
//cuma dari onclick card si usernya
    public function post_pemesanan_tiket(Request $request, $id){
        $tempat = TempatWisata::findOrFail($id);
        
        if (!$tempat) {
            $tempat = "Belum ada tempatwisata! silahkan bikin tempat terlebih dahulu";
            $data = [
                'message' => 'failed',
                'data' => $tempat
            ];
            return response()->json($data, 404);
        }

        if($request->bundling_tiket_id != null)
        {
            $bundlingtiket = BundlingTiketWisata::find($request->bundling_tiket_id);
            $bundlingtiketid = $request->bundling_tiket_id;
            $totalharga = $request->input('jumlah_pesan') * $bundlingtiket->harga_bundling;
        }
        else
        {
            $bundlingtiketid = null;
            $totalharga = $request->input('jumlah_pesan') * $tempat->harga_wisata;
        }
        

        //hrs sama dgn nama tabel di modelnya
        $pesantiket = PemesananTiketnew::create([
            'user_id' => auth()->user()->id,
            //hrs sama dgn nama tabel di modelnya
            'tempat_wisata_id' => $id,
            'bundling_tiket_id' => $bundlingtiketid,
            'nama_tempat_wisata' => $tempat->nama_wisata,
            'username_pemesan' => auth()->user()->username,
            'phone_pemesan' => auth()->user()->phone,

            'tanggal_pesan' => $request->input('tanggal_pesan'),
            'jumlah_pesan' => $request->input('jumlah_pesan'),

            //'total_harga' => $request->input('total_harga'),
            'total_harga' => $totalharga,

            // 'bukti_pembayaran' => $request->input('bukti_pembayaran'),
            'verify_status' => "BELUM DIBAYAR",
            ]);

        $bundlingtiketjoin = PemesananTiketnew::leftjoin('bundling_tiket','bundling_tiket.id', 'transaksi.bundling_tiket_id')
        ->select('transaksi.*','bundling_tiket.nama_bundling', 'bundling_tiket.detail_bundling', 'bundling_tiket.harga_bundling')
        ->where('transaksi.id',$pesantiket->id)
        ->get();
        // $pemesanantiket->user_id;
        // $pemesanantiket->tempat_wisata_id;
        // $pemesanantiket->save();

        return response()->json([
            'status' => '200 OK',
            'message' =>'post_pemesanan_tiket success',
            'data' => $pesantiket
        ]);
    } 

    // public function add_bukti_pembayaran(Request $request, $id) {
    //     $riwayatpemesanan = PemesananTiketNew::findOrFail($id);
    //     if($riwayatpemesanan)
    //         $riwayatpemesanan->delete(); 
    //     else
    //         return response()->json(error);
    //     return response()->json([
    //         'status' => '200 OK',
    //         'message' =>'delete_riwayat_pemesanan success',
    //         'data' => $riwayatpemesanan
    //     ]);
    // }

    // $file_progress = $value;
    //         $fileName_progress = time() . '_' . $file_progress->getClientOriginalName();
    //         $file_progress->move(public_path('storage/progress'), $fileName_progress);


    public function add_bukti_pembayaran(Request $request, $id){
        $riwayatpemesanan = PemesananTiketNew::find($id);
        
        $validator = Validator::make($request->all(), [
            'bukti' => 'required|image:jpeg,png,jpg,gif,svg'
        ]);

        if ($validator->fails()) {
            return response()->json(['error'=>$validator->errors()], 401);            
        }

        $host = $request->getSchemeAndHttpHost();
        $file_progress = $request->bukti;
        $fileName_progress = $host.'/storage/bukti/'.time() . '_' . $file_progress->getClientOriginalName();
        $file_progress->move(public_path('storage/bukti'), $fileName_progress);

        $riwayatpemesanan->update([
            'bukti' => $fileName_progress
        ]);

        return response()->json([
            'status' => '200 OK',
            "message" => "add bukti pembayaran sukses",
            // "data" => $transaksi
        ]); 
    }

    // public function uploadImage(Request $request)
    // {
    //     $validator = Validator::make($request->all(), [
    //         'image' => 'required|image:jpeg,png,jpg,gif,svg|max:2048'
    //     ]);
    //     if ($validator->fails()) {
    //         return sendCustomResponse($validator->messages()->first(),  'error', 500);
    //     }
    //     $uploadFolder = 'users';
    //     $image = $request->file('image');
    //     $image_uploaded_path = $image->store($uploadFolder, 'public');
    //     $uploadedImageResponse = array(
    //         "image_name" => basename($image_uploaded_path),
    //         "image_url" => Storage::disk('public')-  >url($image_uploaded_path),
    //         "mime" => $image->getClientMimeType()
    //     );
    //     return sendCustomResponse('File Uploaded Successfully', 'success',   200, $uploadedImageResponse);
    // }










   

            // public function hitung_total_bayar(){
            //     $user_id = $_GET['id'];
            //     $token = $_GET['token'];
            //     $userInfo = $this->users->getUserInformation($user_id); 
            //     return view('profile.users')->with('user_details', $userInfo);
            // }

        //DISINI DITAMBAHIN OPERASI ARITMATIKA PERKALIAN TOTAL HARGA
        //public function setTotal() {
            //     return $this->total_harga = $this->price * $this->banyak_tiket;
            // }
        


    // public function hitung_total_bayar(){
    //     $reqItems = $request->input($pemesanantiket);

    //     // associative array of item ids and their respective quantities
    //     $itemIdsQtys = [];

    //     foreach($reqItems as $reqItem) {
    //     $itemIdsQtys[$reqItem['id']] = $reqItem['quantity'];
    //     }

    //     // get array of item ids and fetch their respective models
    //     $ids = array_keys($itemIdsQtys);
    //     $itemModels = Item::find($ids);

    //     // calculate total
    //     $priceTotal = 0;
    //     foreach($itemModels as $model) {
    //     $subtotal = $model->price * $itemIdsQtys[$model->id];
    //     $priceTotal += $subtotal;
    //     }

    //     return $priceTotal;
    // }

    // 
    
    
}
