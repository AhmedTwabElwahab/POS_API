<?php

namespace App\Http\Requests\Users;

use App\Http\Requests\APIRequest;

class LoginUserRequest extends APIRequest
{
    protected function onLogin(): array
    {
        return [
            'email'      => 'required',
            'password'   => 'required|string'
        ];
    }
    public function rules(): array
    {
        return $this->onLogin();
    }
}
