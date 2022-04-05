<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class UtamaController extends Controller
{
    public function index()
    {
        $data = [
            [
                "title" => "Majukan Pariwisata NTT Lewat Ideathon 2021 #RinduLabuanBajo",
                "description" => "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Saepe, quibusdam ullam? Accusamus labore sapiente magni quia autem impedit in voluptatibus assumenda blanditiis quae illum perspiciatis dignissimos dolorum ut, vitae molestias?"
            ],
            [
                "title" => "Majukan Pariwisata NTT Lewat Ideathon 2021 #RinduLabuanBajo",
                "description" => "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Saepe, quibusdam ullam? Accusamus labore sapiente magni quia autem impedit in voluptatibus assumenda blanditiis quae illum perspiciatis dignissimos dolorum ut, vitae molestias?"
            ],
            [
                "title" => "Majukan Pariwisata NTT Lewat Ideathon 2021 #RinduLabuanBajo",
                "description" => "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Saepe, quibusdam ullam? Accusamus labore sapiente magni quia autem impedit in voluptatibus assumenda blanditiis quae illum perspiciatis dignissimos dolorum ut, vitae molestias?"
            ],
        ];
        /*dd($data);*/
        $dataview = [
            'article' => $data
        ];
        return view('halamanutama.index', $dataview, [
            "title" => "Halaman Utama"
        ]);
    }
}
