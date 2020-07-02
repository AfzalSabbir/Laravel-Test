<?php

namespace App\Http\Controllers\Backend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use DB;

class MessageController extends Controller
{	
	public function __construct()
	{
		$this->middleware('admin');
	}


	public function insert(Request $request)
	{
		dd('MessageController@index');
	}


	public function send(Request $request)
	{
		dd('MessageController@send');
	}
}
