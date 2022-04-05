<?php

namespace App\Http\Controllers\Api;
use App\Notifications\AjakanLiburan;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\User;
use App\RencanaLiburan;
use App\AjakTemanLiburan;
use App\DestinasiRencanaLiburan;
use App\TempatWisata;
use App\Notifications;
use Auth;
use Illuminate\Support\Facades\Notification;


class RencanaLiburanController extends Controller
{
    public function get_rencana_liburan(){
        $rencanaliburan = RencanaLiburan::where('user_id', auth()->user()->id)->get();

        $rencanaliburanjoin = RencanaLiburan
        ::leftjoin('ajakteman_rencana_liburan', 'ajakteman_rencana_liburan.rencana_liburan_id', 'rencana_liburan.id')
        ->leftjoin('users', 'users.id', 'ajakteman_rencana_liburan.id_penerima_ajakan')
        ->leftjoin('destinasi_rencana_liburan', 'destinasi_rencana_liburan.rencana_liburan_id', 'rencana_liburan.id')
        ->leftjoin('tempat_wisata', 'tempat_wisata.id', 'destinasi_rencana_liburan.id')
        ->where('user_id', auth()->user()->id)
        ->select('rencana_liburan.*', 'ajakteman_rencana_liburan.id_penerima_ajakan', 'ajakteman_rencana_liburan.status_ajakan',
        'users.username', 
        'destinasi_rencana_liburan.tempat_wisata_id', 'destinasi_rencana_liburan.tanggal_rencana_liburan', 'destinasi_rencana_liburan.rencana_durasi_liburan',
        'tempat_wisata.nama_wisata', 'tempat_wisata.alamat_wisata', 'tempat_wisata.foto') 
        ->get();

        // dd($rencanaliburanjoin->id);
        foreach($rencanaliburan as $item){
            $data_penerima_ajakan = null;
            $data_destinasi = null;
            foreach($rencanaliburanjoin as $data){
                if($item->id == $data->id){
                    $data_penerima_ajakan[] = [
                        "id_penerima_ajakan" => $data->id_penerima_ajakan,
                        "status_ajakan" => $data->status_ajakan,
                        "username" => $data->username
                    ];
                    $data_destinasi[] = [
                        "tempat_wisata_id" => $data->tempat_wisata_id,
                        "tanggal_rencana_liburan" => $data->tanggal_rencana_liburan,
                        "rencana_durasi_liburan" => $data->rencana_durasi_liburan,
                        "nama_wisata" => $data->nama_wisata,
                        "alamat_wisata" => $data->alamat_wisata,
                        "foto" => $data->foto
                    ];
                }
            }
            $joinbaru[] = [
                'id' => $item->id,
                'nama_rencana' => $item->nama_rencana,
                'user_id' => $item->user_id,
                'deskripsi_rencana' => $item->user_id,
                'created_at' => $item->created_at,
                'updated_at' => $item->updated_at,
                'data_penerima_ajakan' => $data_penerima_ajakan,
                'data_destinasi' => $data_destinasi
            ];
        }


        return response()->json([
            'status' => '200 OK',
            "message" => "rencana liburan retrieved successfully.",
            "data" => $joinbaru
        ]);
    }
    

    public function edit_rencana_liburan(Request $request, $id){
        $rencanaliburan = RencanaLiburan::find($id);
        $rencanaliburan->update($request->all());
        return response()->json([
            'status' => '200 OK',
            "message" => "edit rencana liburan sukses",
            "data" => $rencanaliburan
        ]); 
    }

    

    public function delete_rencana_liburan($id) {
        $rencanaliburan = RencanaLiburan::findOrFail($id);
        if($rencanaliburan)
           $rencanaliburan->delete(); 
        else
            return response()->json(error);
        return response()->json([
            'status' => '200 OK',
            'message' =>'delete_rencana_liburan success',
            'data' => $rencanaliburan
        ]);
    }


    public function post_rencana_liburan(Request $request){
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
    
    public function post_ajakan_rencana_liburan(Request $request, $rencana_liburan_id, $id){ //id yang mau dikirimin notif
        // $destinasi = TempatWisata::find();
        // $ajakanliburan = RencanaLiburan::create([
        //     'nama_rencana' => $request->input('nama_rencana'),
        //     'deskripsi_rencana' => $request->input('deskripsi_rencana'),
        //     'user_id' => auth()->user()->id,
        //     // 'destinasi_rencana_liburan_id' => $request->input('destinasi_rencana_liburan_id')
        //     ]);

        $body = 'WAH! Ada ajakan liburan bareng dari ';
        $dataajakan = AjakTemanLiburan::create([
            'rencana_liburan_id' => $rencana_liburan_id,
            'body' => $body. auth()->user()->username,
            'id_pengirim_ajakan' => auth()->user()->id,
            'id_penerima_ajakan' => $id,
            'status_ajakan' => "PENDING"
            // 'id_ajakan' => $ajakanliburan->id
        ]);

        $user = User::find($id);
        Notification::send($user, new AjakanLiburan($dataajakan));

        return response()->json([
            'status' => '200 OK',
            'message' =>'post_ajakan_liburan success',
            'data' => $dataajakan //$rencanaliburan
        ]);
    }


    public function post_destinasi_rencana_liburan(Request $request, $rencana_liburan_id, $tempatwisata_id){ //ini id tempat_wisata yg ada didalam db
        $destinasiliburan = DestinasiRencanaLiburan::create([
            'rencana_liburan_id' => $rencana_liburan_id,
            'tempat_wisata_id' => $tempatwisata_id,
            'rencana_durasi_liburan' => $request->input('rencana_durasi_liburan'),
            'tanggal_rencana_liburan' => $request->input('tanggal_rencana_liburan'),
            ]);

        return response()->json([
            'status' => '200 OK',
            'message' =>'post_destinasi_rencana_liburan success',
            'data' => $destinasiliburan
        ]);
    }


    public function accept($rencana_liburan_id, $id_pengirim_ajakan)
    {
        $notifiableid = AjakTemanLiburan::where('rencana_liburan_id', $rencana_liburan_id)
        ->where('id_penerima_ajakan', Auth::user()->id)
        ->first();

        $notifiableid->update([
            'status_ajakan' => "DITERIMA"
        ]);

        $body = 'Ajakan liburan anda telah diterima oleh ';
        $dataajakan = [
            'rencana_liburan_id' => $rencana_liburan_id,
            'body' => $body. auth()->user()->username,
            'id_pengirim_ajakan' => auth()->user()->id,
            'id_penerima_ajakan' => $id_pengirim_ajakan,
            'status_ajakan' => "DITERIMA"
            // 'id_ajakan' => $ajakanliburan->id
        ];

        $user = User::find($id_pengirim_ajakan);
        Notification::send($user, new AjakanLiburan($dataajakan));
        
        return response()->json([
            'status' => '200 OK',
            'message' =>'Ajakan Liburan diterima'
        ]);
    }

    public function reject($rencana_liburan_id, $id_pengirim_ajakan)
    {
        $notifiableid = AjakTemanLiburan::where('rencana_liburan_id', $rencana_liburan_id)
        ->where('id_penerima', Auth::user()->id)
        ->first();

        $notifiableid->update([
            'status_ajakan' => "DITOLAK"
        ]);

        $body = 'Ajakan liburan anda ditolak oleh ';
        $dataajakan = [
            'rencana_liburan_id' => $rencana_liburan_id,
            'body' => $body. auth()->user()->username,
            'id_pengirim_ajakan' => auth()->user()->id,
            'id_penerima_ajakan' => $id_pengirim_ajakan,
            'status_ajakan' => "DITOLAK"
            // 'id_ajakan' => $ajakanliburan->id
        ];

        $user = User::find($id_pengirim_ajakan);
        Notification::send($user, new AjakanLiburan($dataajakan));

        return response()->json([
            'status' => '200 OK',
            'message' =>'Ajakan Liburan ditolak'
        ]);
    }

    public function get_notifikasi(Request $request)
    {
        $notif = Notifications::where('notifiable_id', Auth::user()->id)->get();
        $notifications = auth()->user()->unreadNotifications;

        foreach($notifications as $data){
            // $baru = json_encode($data->data, true);
            // dd($data->data['rencana_liburan_id']);

            $host = $request->getSchemeAndHttpHost();
            $notifnya[] = [
                'notification' => $data, 
                'accept' => $host.'/api/accept/'.$data->data['rencana_liburan_id'].'/'.$data->data['id_pengirim_ajakan'],
                'reject' => $host.'/api/reject/'.$data->data['rencana_liburan_id'].'/'.$data->data['id_pengirim_ajakan']
            ];
            
        }

        return response()->json([
            'status' => '200 OK',
            'message' =>'get notifications success',
            'data' => $notifnya
        ]);
    }
}





// {
//     "status": "200 OK",
//     "message": "rencana liburan retrieved successfully.",
//     "data": [
//         {
//             "id": 1,
//             "user_id": "13",
//             "nama_rencana": "Jalan-jalan sore di Pulau Kemala",
//             "deskripsi_rencana": "Mau jalan bareng teman-teman di Pulau Kemala saat Sabtu Petang. ",
//             "created_at": "2022-01-16 15:12",
//             "updated_at": "2022-01-16 15:12",

//         "data_penerima_ajakan"{
//                 "id_penerima_ajakan": "14",
//                 "status_ajakan": "PENDING",
//                 "username": "maklogaming",
//         }
//         {
//                 "id_penerima_ajakan": "15",
//                 "status_ajakan": "PENDING",
//                 "username": "orang",
//         }

//         "data_destinasi"{
//             "tempat_wisata_id": "3",
//             "tanggal_rencana_liburan": "2022-03-01",
//             "rencana_durasi_liburan": "3 Hari",
//             "nama_wisata": "Pantai Manggar Segarasari",
//             "alamat_wisata": "Jl. Mulawarman Kelurahan Manggar Balikpapan Selatan",
//             "foto": "1641462490_pantaimanggar.jpg"
//         }
//         {
//             "tempat_wisata_id": "4",
//             "tanggal_rencana_liburan": "2022-03-01",
//             "rencana_durasi_liburan": "3 Hari",
//             "nama_wisata": "Kebun Raya Balikpapan",
//             "alamat_wisata": "Jl. Mulawarman Kelurahan Manggar Balikpapan Selatan",
//             "foto": "1641462490_pantaimanggar.jpg"
//         }
//         }
//     ]
// }

