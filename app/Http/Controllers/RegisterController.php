<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Controllers\Controller;
use App\User;
use Illuminate\Support\Facades\Auth;
use Validator;

class RegisterController extends Controller
{
    public function index()
    {
        return view('register.index');
    }

    public function register(Request $request)
    {
        $request->validate([
            'fullname' => 'required|max:255',
            'username' => 'required',
            'email' => 'required|email:dns',
            'password' => 'required|min:5',
            'c_password' => 'required|same:password',
            'phone' => 'required',
            'photo' => 'required'
        ]);

        
            // $file_progress->move(public_path('storage/progress'), $fileName_progress);

        $input = $request->all();
        $input['password'] = bcrypt($input['password']);
        $user = User::create($input);
        //$success['token'] =  $user->createToken('nApp')->accessToken;
        $success['username'] =  $user->username;

        $request->session()->flash('succes', 'Registrasi berhasil !! silahkan login');
        return redirect('/login');
    }
}
