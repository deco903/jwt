<?php

namespace App\Http\Controllers;

use App\Http\Resources\User as UserResource;
use App\http\Requests\RegisterRequest;
use Illuminate\Http\Request;
use App\user;

class RegisterController extends Controller
{
    public function register(RegisterRequest $request)
    {
    	$user = user::create([
    		'name' => $request->name,
    		'email' => $request->email,
    		'password' => bcrypt($request->password),
    	]);

    	$credentials = $request->only('email','password');
    	$token = auth()->attempt($credentials);//copaste from documentation
    	//return response()->json(compact('user','token'));
    	//return new UserResource($user);//copaste from documentation

    	return (new UserResource($request->user()))
                ->additional(['meta' => [
                    'token' => $token,
                ]]);
    }
}
