<?php

namespace App\Http\Controllers\Backend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Helpers\QueryHelper;
use App\Models\Post;
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
      $total_posts    = Post::get()->count();
      $active_posts   = Post::where('status', 1)->get()->count();
      $inactive_posts = Post::where('status', 0)->get()->count();

      return view('backend.pages.index', compact('total_posts', 'active_posts', 'inactive_posts'));
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
