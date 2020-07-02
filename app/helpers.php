<?php

use \App\Models\Admin;

// asset_() works similler as asset() but for public inclusion!!!
if (! function_exists('asset_')) {
    function asset_($path = null, $default = null) {
    	return asset('/').trim($path, '/');
    }
}

if (! function_exists('base_url')) {
    function base_url() {
    	return URL::to('/');
    }
}

if (! function_exists('change_admin_language')) {
    function change_admin_language($lang) {
        if(Auth::guard('admin')->check()) {
            $id = Auth::guard('admin')->id();
            if ($lang == 'en') {
                return \App\Models\Admin::where('id', $id)->update(['language' => 'en']);
            } else {
                return \App\Models\Admin::where('id', $id)->update(['language' => 'bn']);
            }
        } else {
            return 0;
        }
    }
}

if (! function_exists('show_route')) {
    function show_route($model, $resource = null)
    {
        $resource = $resource ?? plural_from_model($model);

        return route("{$resource}.show", $model);
    }
}
