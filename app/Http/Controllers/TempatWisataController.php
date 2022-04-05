<?php

namespace App\Http\Controllers;

use App\TempatWisata;
use App\BundlingTiketWisata;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Validator;

class TempatWisataController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $title = 'Tempat Wisata';
        $wisatas = TempatWisata::orderBy('id', 'desc')->get();

        $bundling = BundlingTiketWisata::all();

        return view('wisata.index', compact('wisatas', 'title', 'bundling'));
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
        
        $file_progress = $request->file('foto');
            $fileName_progress = time() . '_' . $file_progress->getClientOriginalName();
            $file_progress->move(public_path('storage/wisata'), $fileName_progress);

        // insert data ke table user
        $wisata = TempatWisata::create([
            'nama_wisata' => $request->nama_wisata,
            'alamat_wisata' => $request->alamat_wisata,       
            'fasilitas_wisata' => $request->fasilitas_wisata,
            'harga_wisata' => $request->harga_wisata,
            'foto' => $fileName_progress,
        ]);

        
        
        $wisata->save();
        // alihkan halaman ke halaman user
        return redirect()->back()->with('success', 'Berhasil menambah tempat wisata');
 
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\TempatWisata  $tempatWisata
     * @return \Illuminate\Http\Response
     */
    public function show(TempatWisata $tempatWisata)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\TempatWisata  $tempatWisata
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $wisata = TempatWisata::find($id);

        $action = URL::route('wisata.update', ['id' => $id]);

        return view('wisata.index', compact('wisatas', 'title'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\TempatWisata  $tempatWisata
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $wisata = TempatWisata::where('id', $id)->first();

        if ($request->foto == NULL) {
            $wisata->update([
                'nama_wisata' => $request->nama_wisata,
                'alamat_wisata' => $request->alamat_wisata,
                'fasilitas_wisata' => $request->fasilitas_wisata,
                'harga_wisata' => $request->harga_wisata,
                'foto' => $request->foto,
                // 'address' => $request->address,
            ]);
        } else {
            $file_progress = $request->file('foto');
            $fileName_progress = time() . '_' . $file_progress->getClientOriginalName();
            $file_progress->move(public_path('storage/wisata'), $fileName_progress);

            $wisata->update([
                'nama_wisata' => $request->nama_wisata,
                'alamat_wisata' => $request->alamat_wisata,
                'fasilitas_wisata' => $request->fasilitas_wisata,
                'harga_wisata' => $request->harga_wisata,
                'foto' => $fileName_progress,
                // 'address' => $request->address,.
            ]);
        }
        

        return redirect()->back()->with('success', 'Berhasil melakukan update tempat wisata');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\TempatWisata  $tempatWisata
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $wisata = TempatWisata::find($id);
        $wisata->delete();
        
        // $merchant = Merchant::where('user_id', $id)->first();
        // if ($merchant != NULL) {
        //     $merchant->delete();
        // }

        return redirect()->back()->with('success', "Berhasil menghapus tempat wisata");

    }
}
