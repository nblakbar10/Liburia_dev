<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Validator;
use App\User;
use App\TempatWisata;
use App\ReviewTempatWisata;
use App\FotoReviewTempatWisata;

class ReviewWisataController extends Controller
{
    public function index()
    {
        $title = 'Review';
        $review = ReviewTempatWisata::orderBy('id', 'desc')->get();
        return view('review.index', compact('review', 'title'));
    }

    public function confirm($id)
    {
        $post = ReviewTempatWisata::find($id);

        $post->update([
            'verify_status' => "TELAH TERVERIFIKASI OLEH ADMIN"
        ]);

        return back()->with('success',' Review Disetujui.');
    }

    public function reject($id)
    {
        $post = ReviewTempatWisata::find($id);

        $post->update([
            'verify_status' => "DITOLAK OLEH ADMIN"
        ]);

        return back()->with('success','Review Ditolak.');
    }

    public function destroy($id)
    {
        $post = ReviewTempatWisata::find($id);

        $post->delete();

        return back()->with('success',' Penghapusan berhasil.');
    }

}
