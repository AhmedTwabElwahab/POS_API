<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\JsonResponse;

class BaseController extends Controller
{
    /**
     * TO SEND RESPONSE.
     *
     * @param $response
     * @param string $status
     * @param int $code
     * @return JsonResponse
     */
    public function sendResponse($response, string $status = 'Success', int $code = 200): JsonResponse
    {
        return response()->json(['data' => $response, 'status' => $status],$code);
    }

}
