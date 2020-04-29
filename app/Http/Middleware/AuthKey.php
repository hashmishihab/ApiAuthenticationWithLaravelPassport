<?php

namespace App\Http\Middleware;

use App\User;
use Closure;
use Illuminate\Support\Facades\Response;

class AuthKey
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        $token = $request->header('token');
        $user_id = $request->header('user_id');

        $data = User::select('token')->where('id',$user_id)->first();
        $con = $data['token'];

//      dd($token,$user_id,$data['token']);

        if (empty($token) || empty($user_id)){
            return Response::json(['message' => 'App key not found'],401);
        }
        else{
            if (strcmp($token,$con) == 0){

                return $next($request);
            }
            else{
                return Response::json(['message' => 'App key not matched'],401);

            }
        }


    }
}
