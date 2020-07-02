<?php

namespace App\Http\Controllers\Backend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

use App\Helpers\FileHelper;

use Session;

class ENVController extends Controller
{
	public function __construct()
	{
		$this->middleware('admin');
	}

	public function index($token)
	{
		if($token == Session::get('env_read_token')) {
			$env = FileHelper::read_any('.env');
			$rows = count($env);
			$env = implode('', $env);

			return view('backend.pages.env.index', compact('env', 'rows'));
		} else {
			session()->flash('warning', 'Token expired!');
			// return redirect()->route('admin.home');
			return view('errors.419');
		}
	}

	public function save(Request $request, $token)
	{
		if($token == Session::get('env_save_token')) {
			$old_env = FileHelper::insert_any('.env', $request->insert);
			//creating last `.env` backup in `.env.backup` and in Session::get('.env');
			FileHelper::insert_any('.env.backup', $old_env);

			$read_token = base64_encode(rand(1111,9999));
			session()->flash('env_read_token', $read_token);

			session()->flash('success', '.env Updated Successfully!!!');
			return redirect()->route('admin.env.read', $read_token);
		} else {
			session()->flash('warning', 'Token expired!');
			// return redirect()->route('admin.home');
			return view('errors.419');
		}
	}
}
