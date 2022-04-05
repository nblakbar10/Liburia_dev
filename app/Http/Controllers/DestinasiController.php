<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class DestinasiController extends Controller
{
    public function index()
    {
        return view('destinasi.index',  [
            "title" => "Destinasi"
        ]);
    }

    // public function search(Request $request)
    // {
    //     $search = $request->get('q');
    //     $result = Post::whhere('title', 'LIKE', '%', )
    // }
}
