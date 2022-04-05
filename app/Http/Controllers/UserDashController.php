<?php

namespace App\Http\Controllers;

use App\User;
use App\Admin;
use Illuminate\Http\Request;

use App\Http\Controllers\Controller;

use Illuminate\Support\Facades\Auth;
use Validator;

class UserDashController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $title = 'User';
        $users = User::orderBy('id', 'desc')->get();
        return view('user.index', compact('users', 'title'));
        // dd($admins);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        
        $file_progress = $request->photo;
            $fileName_progress = time() . '_' . $file_progress->getClientOriginalName();
            $file_progress->move(public_path('storage/user'), $fileName_progress);
            // dd($fileName_progress);


        // insert data ke table user
        $user= User::create([
            'fullname' => $request->fullname,
            'username' => $request->username,
            'email' => $request->email,
            'password' => $request->password,
            'phone' => $request->phone,
            'photo' => $fileName_progress, 
        ]);

        $user->save();
        // alihkan halaman ke halaman user
        return redirect()->back()->with('success', 'Berhasil menambah user');
 
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
        $user = User::find($id);

        $action = URL::route('user.update', ['id' => $id]);

        return view('user.index', compact('users', 'title'));
    }

    // public function create() {
    //     $user = new User();
    
    //     return View::make('user.edit', compact('user'));
    // }
    
    // public function edit($id) {
    //     $user = User::find($id);
    
    //     return View::make('user.edit', compact('user'));
    // }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Admin  $admin
     * @return \Illuminate\Http\Response
     */
    
    public function update(Request $request, $id)
    {
        // dd("admins");
        $user = User::where('id', $id)->first();

        if ($request->photo == NULL) {
            $user->update([
                'fullname' => $request->fullname,
                'username' => $request->username,
                'email' => $request->email,
                'phone' => $request->phone,
                // 'photo' => $request->photo,
                // 'address' => $request->address,
            ]);
        } else {
            $file_progress = $request->photo;
            $fileName_progress = time() . '_' . $file_progress->getClientOriginalName();
            $file_progress->move(public_path('storage/user'), $fileName_progress);

            $user->update([
                'fullname' => $request->fullname,
                'username' => $request->username,
                'email' => $request->email,
                'phone' => $request->phone,
                'photo' => $fileName_progress,
                // 'address' => $request->address,.
            ]);
        }
        return redirect()->back()->with('success', 'Berhasil melakukan update user');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Admin  $admin
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $user = User::find($id);
        $user->delete();
        
        // $merchant = Merchant::where('user_id', $id)->first();
        // if ($merchant != NULL) {
        //     $merchant->delete();
        // }

        return redirect()->back()->with('success', "Berhasil menghapus user");

    }
}
