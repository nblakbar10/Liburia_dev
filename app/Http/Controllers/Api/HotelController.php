<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Validator;

class HotelController extends Controller
{
    public function get_hotel_info(Request $request){

        $request = new HttpRequest();
        $request->setUrl('https://hotels4.p.rapidapi.com/locations/v2/search');
        $request->setMethod(HTTP_METH_GET);

        $request->setQueryData([
            'query' => $request->input('nama_kota'),
            'locale' => 'id-ID',
            'currency' => 'IDR'
        ]);

        $request->setHeaders([
            'x-rapidapi-host' => 'hotels4.p.rapidapi.com',
            'x-rapidapi-key' => 'e2cd603d1emsh528fe59e1ba15bbp14bc02jsnd3c226aa8656'
        ]);

        try {
            $response = $request->send();

            echo $response->getBody();
        } catch (HttpException $ex) {
            echo $ex;
        }

        // echo $response->getBody();

        return response()->json([
            'status' => '200 OK',
            "message" => "hotel info retrieved successfully.",
            "data" => $response
        ]);


    }
}
