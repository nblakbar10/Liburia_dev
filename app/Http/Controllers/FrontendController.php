<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Artikel;


class FrontendController extends Controller
{
    public function index(Request $request)
    {
        $data = [
            [
                "title1" => "Pantai Manggar Segarasari, Wisata Bahari Favorit di Balikpapan",
                "description1" => "Wisata pantai merupakan salah satu destinasi liburan yang tidak ada matinya, dan masih terus menjadi favorit bagi banyak orang. Salah satu pantai di Balikpapan yang juga amat populer didatangi para wisatawan yaitu Pantai Manggar Segarasari. Wisata bahari ini merupakan wisata andalan Balikpapan yang telah dikelola oleh pemerintah kota. Setiap hari pantai satu ini dipenuhi pengunjung dari warga lokal maupun luar daerah, terlebih di akhir pekan.",
                "image" => $request->file('/public/img/manggar.jpg')
            ],
            [
                "title2" => "Kebun Raya Balikpapan, Wisata Edukasi Terbaik di Kalimantan",
                "description2" => "Banyak yang bilang perjalanan ke Balikpapan membosankan, hanya disuguhi pepohonan rimbun khas Kalimantan. Tapi siapa sangka di tengah padatnya kota, terdapat wisata hijau yang menarik. Namanya Kebun Raya Balikpapan, tempat wisata yang dibangun untuk melepas jenuh. Meskipun tempatnya dekat kota, namun tempat ini sungguh asri.",
                "image" => $request->file('/public/img/manggar.jpg')
            ],
            [
                "title3" => "Bukit Kebo di Balikpapan Utara, Destinasi Wisata Baru yang Bisa Hasilkan PAD",
                "description3" => "Bukit Kebo yang terletak di Kelurahan Graha Indah, Balikpapan Utara berpotensi sebagai destinasi wisata baru yang banyak dikunjungi wisatawan lokal dikarenakan pemandangan yang indah nan mempesona.",
                "image" => $request->file('/public/img/manggar.jpg')
            ]
        ];
        /*dd($data);*/
        $dataview = [
            'article' => $data
        ];
        return view('front.home', $dataview, [
            "title" => "Homepage"
        ]);
    }
}
