<?php

namespace App\Http\Controllers\Backend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Helpers\QueryHelper;
use Countries;
use Unirest;
use Auth;
use Hash;

class HomeController extends Controller
{
    public function __construct()
    {
      $this->middleware('admin');
    }

    /**
     * Admin Dashboard 
    */
    public function index()
    {

      // $response_1 = \Unirest\Request::get("https://iata-and-icao-codes.p.rapidapi.com/airlines",
      //   array(
      //     "X-RapidAPI-Host" => "iata-and-icao-codes.p.rapidapi.com",
      //     "X-RapidAPI-Key" => "86f2d52f7dmsh837e78b0f987086p16c824jsn3702aec80779"
      //   )
      // );
      // $raw_body = json_decode($response_1->raw_body);
      // $body     = $response_1->body;
      // $headers  = $response_1->headers;

      // $response = Unirest\Request::get("https://cometari-airportsfinder-v1.p.rapidapi.com/api/airports/by-code?code=BG%252C+VQ",
      //   array(
      //     "X-RapidAPI-Host" => "cometari-airportsfinder-v1.p.rapidapi.com",
      //     "X-RapidAPI-Key" => "86f2d52f7dmsh837e78b0f987086p16c824jsn3702aec80779"
      //   )
      // );
      // dd($response_1, $response);

      return view('backend.pages.index');
    }

    public function chart()
    {
    	return view('backend.pages.demo.chart');
    }

    public function form()
    {
    	return view('backend.pages.demo.form');
    }

    public function table()
    {
    	return view('backend.pages.demo.table');
    }


    /*
     * Change password form
    */
    public function chnagePasswordForm()
    {
        return view('backend.pages.changePasswordForm');
    }


    /*
    * Change password with matching old one
    */
    public function chnagePassword(Request $request)
    {
        $this->validate($request, [
          'old_password' => 'required',
          'password' => 'required|confirmed',
          'password_confirmation' => 'required'
        ]);

        $admin = Auth::guard('admin')->user();

        if(Hash::check($request->old_password, $admin->password)){
          $admin->password = Hash::make($request->password);
          $admin->save();

          session()->flash('success', 'Password changed successfully');
          return back();
        }
        else{
          session()->flash('old_password', 'Old password does not match');
          return back();
        }
    }
}
