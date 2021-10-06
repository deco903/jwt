<?php

namespace App\Http\Controllers;

use App\Http\Resources\User as UserResource;
use App\http\Requests\LoginRequest;
use Illuminate\Http\Request;

class LoginController extends Controller
{
    public function login(LoginRequest $request)
    {
    	$credentials = $request->only('email','password');
    	if(!$token = auth()->attempt($credentials)){
    			return response()->json(['error' => 'invalid_credentials'], 401);
	    	   };//copaste from documentation
    	
    	return (new UserResource($request->user()))
                ->additional(['meta' => [
                    'token' => $token,
                ]]);
    }
}
