<?php

namespace App\Http\Controllers\Api;

//use App\Follow;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\User;
use App\Follower;
use App\Following;
use Illuminate\Support\Facades\Auth;
use Validator;


class FollowFeatureController extends Controller
{
    public function get_all_following(Request $request){
        $allfollower = Follower::where('user_id', Auth::user()->id)->get();
        if (!$allfollower) {
            $data = [
                'message' => 'anda tidak mengikuti siapapun'
            ];
            return response()->json($data, 404);
        }
        $detailallfollowingjoin = 
        Follower::leftjoin('users', 'users.id', 'follower.user_yg_difollow_id')
        ->select('follower.*','users.username')
        ->where('follower.user_id',Auth::user()->id)
        ->get();

        return response()->json([
            'status' => '200 OK',
            'message' =>'get all following success',
            'users username' => Auth::user()->username,
            'data' => $detailallfollowingjoin
        ]);
    }

    public function get_all_follower(Request $request){
        $allfollower = Follower::where('user_id', Auth::user()->id)->get();
        if (!$allfollower) {
            $data = [
                'message' => 'anda tidak memiliki pengikut'
            ];
            return response()->json($data, 404);
        }
        $detailallfollowerjoin = 
        Follower::leftjoin('users', 'users.id', 'follower.user_id')
        ->select('follower.*','users.username')
        ->where('follower.user_yg_difollow_id', Auth::user()->id)
        ->get();

        return response()->json([
            'status' => '200 OK',
            'message' =>'get all following success',
            'users username' => Auth::user()->username,
            'data' => $detailallfollowerjoin
        ]);
    }

    public function post_follow(Request $request, $id){ //ngasih id yg mau difollow
        $follow_user = Follower::create([
            'user_id' => auth()->user()->id,
            'user_yg_difollow_id' => $id
            ]);

        $detailfollowuserjoin = 
        Follower::leftjoin('users', 'users.id', 'follower.user_yg_difollow_id')
        ->select('follower.*','users.username')
        ->where('follower.user_yg_difollow_id',$id) //bakal nampilin username yg difollow
        ->get();

        return response()->json([
            'status' => '200 OK',
            'message' =>'follow user success',
            'usersusername' => Auth::user()->username,
            'data' => $detailfollowuserjoin  
        ]);
    }


    public function post_unfollow(Request $request, $id){ //ngasih id yg mau diunfollow (id yg jadi Primary Key di table Follower)
        $follow_user = Follower::findOrFail($id);
        if($follow_user)
           $follow_user->delete(); 
        else
            return response()->json([
                'not followed any user'
            ]);

        $detailfollowuserjoin = 
        Follower::leftjoin('users', 'users.id', 'follower.user_yg_difollow_id')
        ->select('follower.*','users.username')
        ->where('follower.user_yg_difollow_id',$id) //bakal nampilin username yg diunfollow
        ->get();

        return response()->json([
            'status' => '200 OK',
            'message' =>'unfollow user success',
            'unfollowed user data' => $detailfollowuserjoin  //$follow_user
        ]);
    }

    
}
