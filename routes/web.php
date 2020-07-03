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

Route::group(['prefix' => '/sessionStatus'], function() {
	Route::get('/guards', function() {
		return json_encode([
			'admin' => Auth::guard('admin')->check() ? Auth::guard('admin')->user()->toArray() : null,
			'web' => Auth::guard('web')->check() ? Auth::guard('web')->user()->toArray() : null,
		]);
	});
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
	 * ENV
	*/
	Route::group(['prefix' => 'env'], function(){
		Route::get('/{token}', 'Backend\ENVController@index')->name('admin.env.read');
		Route::post('/save/{token}', 'Backend\ENVController@save')->name('admin.env.save');
	});
	

	/**
	 * Admin Dashboard
	*/
	Route::get('/dashboard', 'Backend\HomeController@index')->name('admin.home');
	Route::get('/', function(){
		return redirect()->route('admin.home');
	});
	// Route::get('/dashboard', 'Backend\HomeController@index')->name('admin.home');
	// Route::get('/chart', 'Backend\HomeController@chart')->name('admin.chart');
	// Route::get('/form', 'Backend\HomeController@form')->name('admin.form');
	// Route::get('/table', 'Backend\HomeController@table')->name('admin.table');
	
	
	/**
	 * Admin routes
	*/
	Route::group(['prefix' => 'all-admin'], function(){
		Route::get('/', 'Backend\AdminController@index')->name('admin.all_admin.index');
		Route::get('/add', 'Backend\AdminController@create')->name('admin.all_admin.add');
		Route::post('/add', 'Backend\AdminController@store')->name('admin.all_admin.store');
		Route::get('/edit/{id}', 'Backend\AdminController@edit')->name('admin.all_admin.edit');
		Route::post('/edit/{slug}', 'Backend\AdminController@update')->name('admin.all_admin.update');
		Route::get('/delete/{slug}', 'Backend\AdminController@delete')->name('admin.all_admin.delete');
	});


	/**
	 * Setting routes
	*/
	Route::group(['prefix' => 'setting'], function(){
		Route::get('/', 'Backend\SettingController@index')->name('admin.setting.index');
		Route::get('/color-scheme/{color_scheme_id}', 'Backend\SettingController@color_scheme')->name('admin.setting.color_scheme');
		Route::get('/custom-scroll/{_1_0}', 'Backend\SettingController@custom_scroll')->name('admin.setting.custom_scroll');
		Route::get('/show-user-data/{_1_0}', 'Backend\SettingController@show_user_data')->name('admin.setting.show_user_data');
		Route::get('/show-background-image/{_1_0}', 'Backend\SettingController@show_background_image')->name('admin.setting.show_background_image');
		Route::get('/apply-scheme-on-card/{_1_0}', 'Backend\SettingController@apply_scheme_on_card')->name('admin.setting.apply_scheme_on_card');
		Route::get('/show-dev-menu/{_1_0}', 'Backend\SettingController@show_dev_menu')->name('admin.setting.show_dev_menu');
		Route::post('/', 'Backend\SettingController@store')->name('admin.setting.store');
	});


	/**
	 * Menu routes
	*/
	Route::group(['prefix' => 'menu'], function(){
		Route::get('/', 'Backend\MenuController@index')->name('admin.menu.index');
		Route::get('/add', 'Backend\MenuController@create')->name('admin.menu.create');
		Route::post('/add', 'Backend\MenuController@store')->name('admin.menu.store');
		Route::get('/edit/{id}', 'Backend\MenuController@edit')->name('admin.menu.edit');
		Route::post('/edit/{id}', 'Backend\MenuController@update')->name('admin.menu.update');
		Route::get('/delete/{id}', 'Backend\MenuController@delete')->name('admin.menu.delete');
		
		Route::get('/sort', 'Backend\MenuController@sort')->name('admin.menu.sort');
		Route::post('/sort', 'Backend\MenuController@sort_update')->name('admin.menu.sort_update');
	});


	/**
	 * Role routes
	*/
	Route::group(['prefix' => 'role'], function(){
		Route::get('/', 'Backend\RoleController@index')->name('admin.role.index');

		Route::group(['prefix' => 'assign'], function(){
			Route::get('/super-admin', 'Backend\RoleController@create')->name('admin.role.assign.super_admin');
			Route::get('/admin', 'Backend\RoleController@create')->name('admin.role.assign.admin');

			Route::group(['prefix' => 'user'], function(){
				Route::get('/', 'Backend\RoleController@create')->name('admin.role.assign_user');
				Route::get('/{admin_id?}', 'Backend\RoleController@userCreate')->name('admin.role.assign.user');
			});
			Route::post('/', 'Backend\RoleController@store')->name('admin.role.store');
		});
	});


	/**
	 * Admin Access Information
	*/
	Route::get('/log', 'Backend\AdminAccessInfoController@index')->name('admin.log.index');
	
    /**	
    * Category	
    **/	
    Route::group(['prefix' => 'category'], function(){	
        Route::get('/', 'Backend\CategoryController@index')->name('admin.category.index');	
        Route::post('/add', 'Backend\CategoryController@store')->name('admin.category.store');	
        Route::post('/edit/{encrypted_id}', 'Backend\CategoryController@update')->name('admin.category.update');	
        Route::get('/delete/{encrypted_id}', 'Backend\CategoryController@delete')->name('admin.category.delete');	
    });	
	
	/**
     * Database Backup routes
    */
	Route::group(['prefix' => 'backup'], function(){
		Route::get('/', 'Backend\BackupController@index')->name('admin.backup.index');
		Route::get('/new', 'Backend\BackupController@newBackup')->name('admin.backup.new');
		Route::post('/restore', 'Backend\BackupController@restoreBackup')->name('admin.backup.restore');
		Route::get('/delete/{file}', 'Backend\BackupController@deleteBakup')->name('admin.backup.delete');
	});


	/**
    * SMS Routes
    **/
    Route::group(['prefix' => 'sms'], function(){
        Route::get('/send', 'Backend\SMSController@sendSMS')->name('admin.sms.send');
        Route::post('/send', 'Backend\SMSController@sendSMS')->name('admin.sms.get_user');
        Route::post('/submit-send-sms', 'Backend\SMSController@submitSendSMS')->name('admin.sms.submit_send_sms');
        Route::get('/custom', 'Backend\SMSController@customSMS')->name('admin.sms.custom');
        Route::post('/custom', 'Backend\SMSController@customSMS')->name('admin.sms.submit_custom_sms');
        Route::get('/report', 'Backend\SMSController@smsReport')->name('admin.sms.report');
    });


    /**
     * Language
    **/
	Route::group(['prefix' => 'language'], function(){
	    Route::get('/', 'Backend\LanguageController@language')->name('admin.language.index');
	    Route::post('/insert', 'Backend\LanguageController@insert')->name('admin.language.insert');
	    Route::post('/create', 'Backend\LanguageController@create')->name('admin.language.create');
	});


    /**
     * Root
    **/
	Route::group(['prefix' => 'root'], function(){
	    Route::get('/', 'Backend\RootController@index')->name('admin.root.index');
	    Route::post('/create', 'Backend\RootController@create')->name('admin.root.create');
	    Route::get('/controllerSetup', 'Backend\RootController@controller_setup')->name('admin.root.controller_setup');
	});


    /**
	* Database
	**/
	Route::group(['prefix' => 'database'], function(){
		Route::get('/insert', 'Backend\DatabaseController@insert')->name('admin.database.insert');
		Route::post('/insert', 'Backend\DatabaseController@insert')->name('admin.database.insert');
		Route::post('/getFileText', 'Backend\DatabaseController@getFileText')->name('admin.database.get_file_text');
	});


    /**
	* Message
	**/
	Route::group(['prefix' => 'message'], function(){
		Route::get('/', 'Backend\MessageController@index')->name('admin.message.index');
		Route::post('/send', 'Backend\MessageController@send')->name('admin.message.send');
	});
    
    /**	
    * Module	
    **/	
    Route::group(['prefix' => 'module'], function(){	
        Route::get('/', 'Backend\ModuleController@index')->name('admin.module.index');	
        Route::get('/add', 'Backend\ModuleController@add')->name('admin.module.add');	
        Route::post('/add', 'Backend\ModuleController@store')->name('admin.module.store');	
        Route::get('/edit/{id}', 'Backend\ModuleController@edit')->name('admin.module.edit');	
        Route::post('/edit/{id}', 'Backend\ModuleController@update')->name('admin.module.update');	
        Route::get('/delete/{id}', 'Backend\ModuleController@delete')->name('admin.module.delete');	
        
        Route::post('/get_description', 'Backend\ModuleController@get_description')->name('admin.module.get_description');	
        Route::post('/get_tegs', 'Backend\ModuleController@get_tegs')->name('admin.module.get_tegs');	
    });

    /**	
    * ExamplePagination	
    **/	
    Route::group(['prefix' => 'example_pagination'], function(){	
        Route::get('/', 'Backend\ExamplePaginationController@index')->name('admin.example_pagination.index');	
        Route::get('/add', 'Backend\ExamplePaginationController@add')->name('admin.example_pagination.add');	
        Route::post('/add', 'Backend\ExamplePaginationController@store')->name('admin.example_pagination.store');	
        Route::get('/view/{encrypted_id}', 'Backend\ExamplePaginationController@view')->name('admin.example_pagination.view');	
        Route::get('/edit/{encrypted_id}', 'Backend\ExamplePaginationController@edit')->name('admin.example_pagination.edit');	
        Route::post('/edit/{encrypted_id}', 'Backend\ExamplePaginationController@update')->name('admin.example_pagination.update');	
        Route::get('/delete/{encrypted_id}', 'Backend\ExamplePaginationController@delete')->name('admin.example_pagination.delete');	
    });	
	
    /**	
    * Example	
    **/	
    Route::group(['prefix' => 'example'], function(){	
        Route::get('/', 'Backend\ExampleController@index')->name('admin.example.index');	
        Route::get('/add', 'Backend\ExampleController@add')->name('admin.example.add');	
        Route::post('/add', 'Backend\ExampleController@store')->name('admin.example.store');	
        Route::get('/view/{encrypted_id}', 'Backend\ExampleController@view')->name('admin.example.view');	
        Route::get('/edit/{encrypted_id}', 'Backend\ExampleController@edit')->name('admin.example.edit');	
        Route::post('/edit/{encrypted_id}', 'Backend\ExampleController@update')->name('admin.example.update');	
        Route::get('/delete/{encrypted_id}', 'Backend\ExampleController@delete')->name('admin.example.delete');	
    });	
	
    /**	
    * ExampleModal	
    **/	
    Route::group(['prefix' => 'example_modal'], function(){	
        Route::get('/', 'Backend\ExampleModalController@index')->name('admin.example_modal.index');	
        Route::post('/add', 'Backend\ExampleModalController@store')->name('admin.example_modal.store');	
        Route::post('/edit/{encrypted_id}', 'Backend\ExampleModalController@update')->name('admin.example_modal.update');	
        Route::get('/delete/{encrypted_id}', 'Backend\ExampleModalController@delete')->name('admin.example_modal.delete');	
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
