<?php

namespace App\Http\Controllers;

use App\Admin;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

use Illuminate\Support\Facades\Auth;
use Validator;

class AdminController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $title = 'Admin';
        $admins = Admin::orderBy('id', 'desc')->get();
        return View('admin.index', compact('admins', 'title'));
        // dd($admins);
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
            $file_progress->move(public_path('storage/user'), $fileName_progress);
            // dd($fileName_progress);


        // insert data ke table admin
        $admin = Admin::create([
            'fullname' => $request->fullname,
            'username' => $request->username,
            'email' => $request->email,
            'password' => $request->password,
            'phone' => $request->phone,
            'photo' => $fileName_progress, 
        ]);

        $user->save();
        // alihkan halaman ke halaman admin
        return redirect()->back()->with('success', 'Berhasil menambah admin');
 
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Admin  $admin
     * @return \Illuminate\Http\Response
     */
    public function show(Admin $admin)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Admin  $admin
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $admin = Admin::find($id);

        $action = URL::route('admin.update', ['id' => $id]);

        return view('user.index', compact('admins', 'title'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Admin  $admin
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $admin = Admin::where('id', $id)->first();

        if ($request->picture == NULL) {
            $admin->update([
                'fullname' => $request->fullname,
                'username' => $request->username,
                'email' => $request->email,
                'phone' => $request->phone,
                // 'photo' => $request->photo,
                // 'address' => $request->address,
            ]);
        } else {
            $file_progress = $request->file('photo');
            $fileName_progress = time() . '_' . $file_progress->getClientOriginalName();
            $file_progress->move(public_path('storage/user'), $fileName_progress);

            $user->update([
                'fullname' => $request->fullname,
                'username' => $request->username,
                'email' => $request->email,
                'phone' => $request->phone,
                'photo' => $request->photo,
                // 'address' => $request->address,
            ]);
        }
        

        return redirect()->back()->with('success', 'Berhasil melakukan update admin');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Admin  $admin
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $admin = Admin::find($id);
        $admin->delete();
        
        // $merchant = Merchant::where('user_id', $id)->first();
        // if ($merchant != NULL) {
        //     $merchant->delete();
        // }

        return redirect()->back()->with('success', "Berhasil menghapus admin");

    }
}
