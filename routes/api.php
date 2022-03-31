<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\API\InputTempatWisataController;
use App\Http\Controllers\API\FollowFeatureController;
use App\Http\Controllers\API\HotelController;

// use App\Http\Controllers\API\UserController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });


Route::post('login', 'Api\UserController@login');
Route::post('register', 'Api\UserController@register');

Route::group(['middleware' => 'auth:api'], function(){
    Route::get('details', 'Api\UserController@details');
    Route::post('logout', 'Api\UserController@logout');
    Route::post('user_edit', 'Api\UserController@user_edit'); //harusnya ini put tapi malah error wkwkkw jadinya pake post
    Route::delete('user_delete/{id}', 'Api\UserController@user_delete');

    Route::post('update', 'Api\UserController@update');

    Route::get('get_tempat_wisata', 'API\DetailController@get_tempat_wisata');
    Route::get('get_bundling_tiket', 'API\DetailController@get_bundling_tiket');
    Route::get('get_review_wisata', 'API\DetailController@get_review_wisata');
    Route::get('get_artikel', 'API\DetailController@get_artikel');
    Route::get('get_bundling_tiket/{tempat_wisata_id}', 'API\DetailController@get_bundling_tiket');

    


    Route::post('post_follow/{id}', 'API\FollowFeatureController@post_follow');
    Route::delete('post_unfollow/{id}', 'API\FollowFeatureController@post_unfollow');
    Route::get('get_all_following', 'API\FollowFeatureController@get_all_following');
    Route::get('get_all_follower', 'API\FollowFeatureController@get_all_follower');

    Route::post('input_tempat_wisata', 'API\InputTempatWisataController@input_tempat_wisata');
    Route::post('input_bundling_tiket_wisata/{id}', 'API\InputTempatWisataController@input_bundling_tiket_wisata');

    Route::get('get_rencana_liburan', 'Api\RencanaLiburanController@get_rencana_liburan');
    Route::post('post_rencana_liburan', 'Api\RencanaLiburanController@post_rencana_liburan');
    Route::put('edit_rencana_liburan/{id}', 'Api\RencanaLiburanController@edit_rencana_liburan');
    Route::delete('delete_rencana_liburan/{id}', 'Api\RencanaLiburanController@delete_rencana_liburan');

    Route::post('post_ajakan_rencana_liburan/{rencanaliburan_id}/{id}', 'API\RencanaLiburanController@post_ajakan_rencana_liburan');
    Route::post('post_destinasi_rencana_liburan/{rencanaliburan_id}/{tempatwisata_id}', 'API\RencanaLiburanController@post_destinasi_rencana_liburan');

    Route::post('accept/{rencana_liburan_id}/{id_pengirim}', 'API\RencanaLiburanController@accept');
    Route::post('reject/{rencana_liburan_id}/{id_pengirim}', 'API\RencanaLiburanController@reject');
    Route::get('get_notifikasi', 'API\RencanaLiburanController@get_notifikasi');


    Route::get('get_pemesanan_tiket', 'Api\PemesananTiketController@get_pemesanan_tiket');
    Route::post('post_pemesanan_tiket/{id}', 'Api\PemesananTiketController@post_pemesanan_tiket');

    Route::post('add_bukti_pembayaran/{id}', 'Api\PemesananTiketController@add_bukti_pembayaran');

    Route::delete('delete_riwayat_pemesanan/{id}', 'Api\PemesananTiketController@delete_riwayat_pemesanan');


    // Route::post('follow_user', 'Api\FollowController@follow_user');
    // Route::delete('unfollow_user', 'Api\FollowController@unfollow_user');

    Route::post('post_review_wisata/{tempatwisata}', 'API\ReviewTempatWisataController@post_review_wisata');
    Route::post('post_foto_review_wisata/{review_tempat_wisata_id}', 'API\ReviewTempatWisataController@post_foto_review_wisata');
    Route::get('get_all_review_wisata', 'API\ReviewTempatWisataController@get_all_review_wisata');
    Route::get('get_review_wisata/{tempat_wisata_id}', 'API\ReviewTempatWisataController@get_review_wisata');

    Route::get('get_riwayat_liburan/{user_id}', 'API\RiwayatLiburanController@get_riwayat_liburan');



    Route::get('get_hotel_info', 'Api\HotelController@get_hotel_info');
    Route::apiResource('tempatwisatas/{tempatwisata}/reviews', 'ReviewTempatWisataController')
    ->only('store', 'update', 'destroy');
    
    //Route::match(array('GET','POST'),'post_rencana_liburan', 'Api\DetailController@post_rencana_liburan');

    
    
    
    
}); 


//Route::get('users', 'apicontroller@get_all_users');
//Route::post('users/add_users', 'apicontroller@insert_data_users');
//Route::put('/users/update/{id}','apicontroller@update_data_users');