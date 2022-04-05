<?php

namespace App\Http\Controllers;

use App\PemesananTiketnew;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

use Illuminate\Support\Facades\Auth;
use Validator;

class PemesananTiketnewController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $title = 'Pemesanan Tiket';
        $transaksis = PemesananTiketnew::orderBy('id', 'desc')->get();
        return View('transaksi.index', compact('transaksis', 'title'));

        //dd($tikets);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\PemesananTiketnew  $pemesananTiketnew
     * @return \Illuminate\Http\Response
     */
    public function show(PemesananTiketnew $pemesananTiketnew)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\PemesananTiketnew  $pemesananTiketnew
     * @return \Illuminate\Http\Response
     */
    public function edit(PemesananTiketnew $pemesananTiketnew)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\PemesananTiketnew  $pemesananTiketnew
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, PemesananTiketnew $pemesananTiketnew)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\PemesananTiketnew  $pemesananTiketnew
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $post = PemesananTiketnew::find($id);

        $post->delete();

        return back()->with('success',' Penghapusan berhasil.');
    }


    public function confirm($id)
    {
        $post = PemesananTiketnew::find($id);

        $post->update([
            'verify_status' => "LUNAS"
        ]);

        return back()->with('success',' Transaksi Disetujui.');
    }

    public function reject($id)
    {
        $post = PemesananTiketnew::find($id);

        $post->update([
            'verify_status' => "DITOLAK"
        ]);

        return back()->with('success','Transaksi Ditolak.');
    }
}
