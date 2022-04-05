<?php

namespace App\Http\Controllers;

use App\Artikel;
use Illuminate\Http\Request;

class ArtikelController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $title = 'Artikel';
        $artikel = Artikel::orderBy('id', 'desc')->get();
        return view('artikel.index', compact('artikel', 'title'));
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
        
        $file_progress = $request->file('photo');
            $fileName_progress = time() . '_' . $file_progress->getClientOriginalName();
            $file_progress->move(public_path('storage/artikel'), $fileName_progress);
            // dd($fileName_progress);


        // insert data ke table user
        $artikel= Artikel::create([
            'judul' => $request->judul,
            'isi' => $request->isi,
            'photo' => $fileName_progress, 
        ]);

        $artikel->save();
        // alihkan halaman ke halaman user
        return redirect()->back()->with('success', 'Berhasil menambah artikel');
 
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Artikel  $artikel
     * @return \Illuminate\Http\Response
     */
    public function show(Artikel $artikel)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Artikel  $artikel
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $artikel = Artikel::find($id);

        $action = URL::route('artikel.update', ['id' => $id]);

        return view('artikel.index', compact('artikel', 'title'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Artikel  $artikel
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        // dd("admins");
        $artikel = Artikel::where('id', $id)->first();

        if ($request->photo == NULL) {
            $artikel->update([
                'judul' => $request->judul,
                'isi' => $request->isi,
                'photo' => $request->photo,
            ]);
        } else {
            $file_progress = $request->file('photo');
            $fileName_progress = time() . '_' . $file_progress->getClientOriginalName();
            $file_progress->move(public_path('storage/artikel'), $fileName_progress);

            $artikel->update([
                'judul' => $request->fullname,
                'isi' => $request->username,
                'photo' => $fileName_progress,
                // 'address' => $request->address,.
            ]);
        }
        return redirect()->back()->with('success', 'Berhasil melakukan update artikel');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Artikel  $artikel
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $artikel = Artikel::find($id);
        $artikel->delete();
        
        // $merchant = Merchant::where('user_id', $id)->first();
        // if ($merchant != NULL) {
        //     $merchant->delete();
        // }

        return redirect()->back()->with('success', "Berhasil menghapus artikel");

    }
}
