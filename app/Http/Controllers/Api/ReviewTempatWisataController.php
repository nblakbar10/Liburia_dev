<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Validator;
use App\User;
use App\TempatWisata;
use App\ReviewTempatWisata;
use App\FotoReviewTempatWisata;

class ReviewTempatWisataController extends Controller
{
    public function __construct()
    {
      $this->middleware('auth');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
     */
    
    public function post_review_wisata(Request $request, $tempatwisata)
    {
        $review = ReviewTempatWisata::create([
            'review' => $request->review,
            'rating' => $request->rating,
            'user_id' => auth()->user()->id,
            'tempat_wisata_id' => $tempatwisata,
            'verify_status' => "BELUM DIVERIFIKASI ADMIN"
            ]);

        // $review->user_id;
        // $review->save();

        return response()->json([
            'status' => '200 OK',
            'message' =>'post_rencana_liburan success',
            'data' => $review
        ]);
    }

    public function post_foto_review_wisata(Request $request, $review_tempat_wisata_id)
    {
        $validator = Validator::make($request->all(), [
            //'user_id' => 'required',
            //'review_tempat_wisata_id' => 'required',
            'foto_detail_review' => 'required',
            'foto_detail_review.*' => 'mimes:jpeg,jpg,png'
        ]);

        if ($validator->fails()) {    
            return response()->json($validator->messages(), 400);
        }

        $data = [];
        if($request->hasfile('foto_detail_review'))
        {
            foreach($request->file('foto_detail_review') as $simpanfotoreview)
            {
                $host = $request->getSchemeAndHttpHost();
                $fileName_fotoReview = $host.'/storage/review/'.time().'_'.$simpanfotoreview->getClientOriginalName();
                $simpanfotoreview->move(public_path('storage/review'), $fileName_fotoReview);
                $data[] = $fileName_fotoReview;  
            }
        }

        $review = new FotoReviewTempatWisata();
        $review->user_id = Auth::user()->id;
        $review->review_tempat_wisata_id = $review_tempat_wisata_id;
        $review->foto_detail_review = $data;
        $review->save();

        return response()->json([
            'status' => '200 OK',
            'message' =>'post_foto_review_tempat_wisata success',
            'data' => $review
        ]);
    }


    public function get_all_review_wisata(){
        $review = ReviewTempatWisata::where('user_id', auth()->user()->id)->get();
        //RencanaLiburan::where('user_id',$user_id)->get();
        
        $reviewwisatajoin = ReviewTempatWisata::leftjoin('foto_review_tempat_wisata', 'foto_review_tempat_wisata.review_tempat_wisata_id', 'review_tempat_wisata.id')
        ->select('review_tempat_wisata.*', 'foto_review_tempat_wisata.foto_detail_review') 
        ->where('review_tempat_wisata.user_id', auth()->user()->id)
        ->get();
        

        // foreach($review as $item){
        //     foreach($reviewwisatajoin as $data){
        //         if($item->id == $data->id){
        //             $foto_review[] = [
        //                 "foto_detail_review" => $data->foto_detail_review,
        //             ];
        //         }
        //     }
        //     $joinbaru[] = [
        //         'id' => $item->id,
        //         'user_id' => $item->user_id,
        //         'tempat_wisata_id' => $item->tempat_wisata_id,
        //         'review' => $item->review,
        //         'rating' => $item->rating,
        //         'created_at' => $item->created_at,
        //         'updated_at' => $item->updated_at,
        //         "foto_review" => $foto_review,
        //     ];
        // }

        return response()->json([
            'status' => '200 OK',
            "message" => "review wisata from this user retrieved successfully.",
            "data" => $reviewwisatajoin
        ]);
    }

    public function get_review_wisata($tempat_wisata_id){
        $review = ReviewTempatWisata::where('id',$tempat_wisata_id)->get();
        //RencanaLiburan::where('user_id',$user_id)->get();
        
        $reviewwisatajoin = ReviewTempatWisata::leftjoin('foto_review_tempat_wisata', 'foto_review_tempat_wisata.review_tempat_wisata_id', 'review_tempat_wisata.id')
        ->leftjoin('users', 'users.id', 'foto_review_tempat_wisata.user_id')
        ->select('review_tempat_wisata.*', 'foto_review_tempat_wisata.foto_detail_review', 'users.username') 
        ->get();

        return response()->json([
            'status' => '200 OK',
            "message" => "review wisata from this user retrieved successfully.",
            "data" => $reviewwisatajoin
        ]);
    }
    
    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Product  $product
     * @param  \App\Review  $review
     * @return \Illuminate\Http\Response
     */

    public function update(Request $request, TempatWisata $tempatwisata, ReviewTempatWisata $review)
    {
        if (auth()->user()->id !== $review->user_id) {
            return response()->json(['message' => 'Action Forbidden!']);
        }
        $request->validate([
            'review' => 'required|string',
            'rating' => 'required|numeric|min:0|max:5',
        ]);

        $review->review = $request->review;
        $review->rating = $request->rating;
        $review->save();

        return response()->json(['message' => 'Review Updated!', 'review' => $review]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Product  $product
     * @param  \App\Review  $review
     * @return \Illuminate\Http\Response
     */

    public function destroy(TempatWisata $tempatwisata, ReviewTempatWisata $review)
    {
        if (auth()->user()->id !== $review->user_id) {
            return response()->json(['message' => 'Action Forbidden!']);
        }
        $review->delete();
        return response()->json(null, 204);
    }









































    
    // public function post_review_wisata(Request $request){
    //     $rencanaliburan = RencanaLiburan::create([
    //         ''
    //         'nama_rencana' => $request->input('nama_rencana'),
    //         'deskripsi_rencana' => $request->input('deskripsi_rencana'),
    //         'user_id' => auth()->user()->id
    //         ]);

    //     $rencanaliburan->user_id;
    //     $rencanaliburan->save();

    //     return response()->json([
    //         'status' => '200 OK',
    //         'message' =>'post_rencana_liburan success',
    //         'data' => $rencanaliburan
    //     ]);
    // }

    // public function get_review_wisata($user_id){
    //     $rencanaliburan = ReviewTempatWisata::where('user_id',$user_id)->get();
    //     //RencanaLiburan::where('user_id',$user_id)->get();
        
    //     return response()->json([
    //         'status' => '200 OK',
    //         "message" => "rencana liburan retrieved successfully.",
    //         "data" => $rencanaliburan
    //     ]);
    // }


}
