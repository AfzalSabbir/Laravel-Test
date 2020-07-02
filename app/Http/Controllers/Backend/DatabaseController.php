<?php

namespace App\Http\Controllers\Backend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use DB;

class DatabaseController extends Controller
{	
	public function __construct()
	{
		$this->middleware('admin');
	}


	public function insert(Request $request)
	{
		if ($request->isMethod('post')) {
			//dd($request->insert);
			DB::unprepared($request->insert);
			return redirect()->route('admin.database.insert');
		} else {
			return view('backend.pages.database.insert');
		}
	}


	public function getFileText(Request $request)
	{
		return file_get_contents($request->sql_text);
	}
}
