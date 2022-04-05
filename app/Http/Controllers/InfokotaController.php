<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class InfokotaController extends Controller
{
    public function index()
    {


        return view('infokota.index', [
            "title" => " Informasi Kota"
        ]);
    }
}
