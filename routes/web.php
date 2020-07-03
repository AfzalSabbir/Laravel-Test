<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
	$posts = \App\Models\Post::where('status', 1)->get()->groupBy('section');
	return view('post', compact('posts'));
})->name('post');

Route::get('/post/{slug}', function ($slug) {
	$row = \App\Models\Post::where('slug', $slug)->where('status', 1)->first();
	if(!$row) abort(404);
	return view('post_view', compact('row'));
});

Auth::routes();

/**
 * Redirect after auth of user
**/
Route::get('/home', 'HomeController@index')->name('home');


/**
 * 401
**/
Route::group(['prefix' => 'public'], function(){
	//Route::get('/css', function() { return view('errors.401'); });
});

/**
 * Errors
**/
Route::group(['prefix' => 'error'], function(){
	Route::get('/401', function() { return view('errors.401'); })->name('errors.401');
	Route::get('/403', function() { return view('errors.403'); })->name('errors.403');
	Route::get('/404', function() { return view('errors.404'); })->name('errors.404');
	Route::get('/419', function() { return view('errors.419'); })->name('errors.419');
	Route::get('/429', function() { return view('errors.429'); })->name('errors.429');
	Route::get('/500', function() { return view('errors.500'); })->name('errors.500');
});



/**
 * Admin Section Routes
**/
Route::group(['prefix' => 'admin'], function(){

	
	/**
	 * Admin Errors
	**/
	Route::group(['prefix' => 'error'], function(){
		Route::get('/401', function() { return view('errors.401'); })->name('admin.errors.401');
		Route::get('/403', function() { return view('errors.403'); })->name('admin.errors.403');
		Route::get('/404', function() { return view('errors.404'); })->name('admin.errors.404');
		Route::get('/419', function() { return view('errors.419'); })->name('admin.errors.419');
		Route::get('/429', function() { return view('errors.429'); })->name('admin.errors.429');
		Route::get('/500', function() { return view('errors.500'); })->name('admin.errors.500');
	});

	/**
	 * Admin authentication routes
	**/
	Route::get('/login', 'Auth\Admin\LoginController@showLoginForm')->name('admin.login');
	Route::post('/login', 'Auth\Admin\LoginController@login')->name('admin.login.submit');
	Route::post('/logout', 'Auth\Admin\LoginController@logout')->name('admin.logout');
	Route::post('password/email', 'Auth\Admin\ForgotPasswordController@sendResetLinkEmail')->name('admin.password.email');
	Route::get('password/reset', 'Auth\Admin\ForgotPasswordController@showLinkRequestForm')->name('admin.password.request');
	Route::post('password/reset','Auth\Admin\ResetPasswordController@reset');
	Route::get('password/reset/{token}', 'Auth\Admin\ResetPasswordController@showResetForm')->name('admin.password.reset');
	Route::get('/change-password', 'Backend\HomeController@chnagePasswordForm')->name('admin.password.form');
	Route::post('/change-password', 'Backend\HomeController@chnagePassword')->name('admin.password.change');

	

	/**
	 * Admin Dashboard
	*/
	Route::get('/dashboard', 'Backend\HomeController@index')->name('admin.home');
	Route::get('/', function(){
		return redirect()->route('admin.home');
	});
	
    /**	
    * Post	
    **/	
    Route::group(['prefix' => 'post'], function(){	
        Route::get('/', 'Backend\PostController@index')->name('admin.post.index');	
        Route::get('/add', 'Backend\PostController@add')->name('admin.post.add');	
        Route::post('/add', 'Backend\PostController@store')->name('admin.post.store');	
        Route::get('/view/{encrypted_id}', 'Backend\PostController@view')->name('admin.post.view');	
        Route::get('/edit/{encrypted_id}', 'Backend\PostController@edit')->name('admin.post.edit');	
        Route::post('/edit/{encrypted_id}', 'Backend\PostController@update')->name('admin.post.update');
        Route::get('/publish/{encrypted_id}', 'Backend\PostController@publish')->name('admin.post.publish');	
        Route::get('/delete/{encrypted_id}', 'Backend\PostController@delete')->name('admin.post.delete');	
    });	
	
});


Route::get('language/{locale}', function ($lang) {
	Session::put('locale', $lang);
	change_admin_language($lang);
	return redirect()->back();
})->name('language');
