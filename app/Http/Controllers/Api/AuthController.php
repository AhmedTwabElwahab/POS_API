<?php

namespace App\Http\Controllers\Api;

use App\Http\Requests\Users\LoginUserRequest;
use App\Services\UserServices;
use Illuminate\Http\JsonResponse;
use Illuminate\Support\Facades\Auth;

class AuthController extends BaseController
{
    public UserServices $user;

    /**
     * __construct
     *
     * @param UserServices $user
     */
    public function __construct(UserServices $user)
    {
        $this->user = $user;
    }

    /**
     * login exists user.
     *
     * @param LoginUserRequest $request
     * @return JsonResponse
     */
    public function login(LoginUserRequest $request): JsonResponse
    {
        $email = $request->input('email');

        $login_type = filter_var($email, FILTER_VALIDATE_EMAIL) ? 'email' : 'user_name';

        if(Auth::attempt([
            $login_type    => $email,
            'password'     => $request->input('password')
        ]))
        {
            $user = Auth::user();
            $success['token'] =  $user->createToken('MyApp')->plainTextToken;

            return $this->sendResponse($success, 'User login successfully.');
        }
        else
        {
            return $this->sendResponse('Unauthorised.','fail');
        }
    }

}
