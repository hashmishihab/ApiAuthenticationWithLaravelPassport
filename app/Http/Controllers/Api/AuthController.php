<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\User;
use Illuminate\Support\Facades\Response;

class AuthController extends Controller
{
    public function register(Request $request)
    {
        $validatedData = $request->validate([
            'name'=>'required|max:55',
            'email'=>'email|required|unique:users',
            'password'=>'required|confirmed'
        ]);

        $validatedData['password'] = bcrypt($request->password);

        $user = User::create($validatedData);


        return response(['user'=> $user]);

    }


    public function login(Request $request)
    {
        $loginData = $request->validate([
            'email' => 'email|required',
            'password' => 'required'
        ]);

        if(!auth()->attempt($loginData)) {
            return response(['message'=>'Invalid credentials']);
        }

        //for generating tokens
        $accessToken = auth()->user()->createToken('authToken')->accessToken;

        $userInfo= $request->user();

//        dd($userInfo,$accessToken);
        //updating token fields of respective user
        $data = User::find($userInfo->id);
        $data->token = 'Bearer '.$accessToken;

        $data->save();

        return response(['user' => auth()->user(), 'access_token' => $accessToken]);

    }

    public function index()
    {
        $data = User::all();
        return Response::json($data);
    }
}
