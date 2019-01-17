<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Illuminate\Support\Facades\Auth; // чтобы иметь возможность определить пользователя, сделавшего запрос
use Illuminate\Support\Facades\Input; // для доступа к переданным полям (хотя хз зачем, можно было из реквеста достать)

class UserController extends Controller
{
    public function toggle_saved()
    {
    	$id = Input::get('id');
    	$user = Auth::user();
    	$saved = $user->saved;
    	$key = array_search($id, $saved); // смотрим есть ли переданный id в сохраненных у пользователя
    	if ($key === false) {
    		array_push($saved, $id); // добавим
    	}
    	else {
    		array_splice($saved, $key, 1); // уберем
    	}
    	$user->saved = $saved;
    	$user->save();
    	return response()->json();
    }
}
