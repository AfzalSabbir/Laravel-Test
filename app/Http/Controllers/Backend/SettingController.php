<?php
namespace App\Http\Controllers\Backend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Helpers\QueryHelper;
use App\Helpers\ImageUploadHelper;
use App\Models\Setting;

use Config;


class SettingController extends Controller
{
	
    public function __construct()
    {
        $this->middleware('admin');
    }

    public function index()
    {
        $setting = Setting::first();
        return view('backend.pages.setting.index', compact('setting'));
    }

    public function custom_scroll($custom_scroll){
        $custom_scroll = decrypt($custom_scroll);
        $new_bol = ($custom_scroll+1)%2;
        $return = [
            'new_custom_scroll' => encrypt($new_bol),
            'new_custom_scroll_bol' => $new_bol,
            'new_custom_scroll_route' => route('admin.setting.custom_scroll', encrypt($new_bol)),
        ];
        $setting = Setting::where('id', 1);
        $setting->update(['custom_scroll' => $custom_scroll]);

        // session()->flash('theme_success_message','Active!');
        // return redirect()->back();
        return json_encode($return);
    }

    public function show_user_data($show_user_data){
        $show_user_data = decrypt($show_user_data);
        $new_bol = ($show_user_data+1)%2;
        $return = [
            'new_show_user_data' => encrypt($new_bol),
            'new_show_user_data_bol' => $new_bol,
            'new_show_user_data_route' => route('admin.setting.show_user_data', encrypt($new_bol)),
        ];
        $setting = Setting::where('id', 1);
        $setting->update(['show_user_data'=>$show_user_data]);

        // session()->flash('theme_success_message','Active!');
        // return redirect()->back();
        return json_encode($return);
    }

    public function show_background_image($show_background_image){
        $show_background_image = decrypt($show_background_image);
        $new_bol = ($show_background_image+1)%2;
        $return = [
            'new_show_background_image' => encrypt($new_bol),
            'new_show_background_image_bol' => $new_bol,
            'new_show_background_image_route' => route('admin.setting.show_background_image', encrypt($new_bol)),
        ];
        $setting = Setting::where('id', 1);
        $setting->update(['show_background_image'=>$show_background_image]);

        // session()->flash('theme_success_message','Active!');
        // return redirect()->back();
        return json_encode($return);
    }

    public function apply_scheme_on_card($apply_scheme_on_card){
        $apply_scheme_on_card = decrypt($apply_scheme_on_card);
        $new_bol = ($apply_scheme_on_card + 1) % 2;
        $return = [
            'new_apply_scheme_on_card' => encrypt($new_bol),
            'new_apply_scheme_on_card_bol' => $new_bol,
            'new_apply_scheme_on_card_route' => route('admin.setting.apply_scheme_on_card', encrypt($new_bol)),
        ];
        $setting = Setting::where('id', 1);
        $setting->update(['apply_scheme_on_card'=>$apply_scheme_on_card]);

        return json_encode($return);
    }

    public function show_dev_menu($show_dev_menu){
        $show_dev_menu = decrypt($show_dev_menu);
        $setting = Setting::where('id', 1);
        $setting->update(['show_dev_menu'=>$show_dev_menu]);

        session()->flash('theme_success_message','Active!');
        return redirect()->back();
    }

    public function color_scheme($color_scheme_id)
    {
        $color_scheme_id = decrypt($color_scheme_id);
        $setting = Setting::where('id', 1);

        if($setting->first()->color_scheme_id == $color_scheme_id) {
            session()->flash('theme_already_active','Active!');
            return redirect()->back();
        }
        if(array_key_exists($color_scheme_id, Config::get('theme_schemes'))) {
            $setting->update(['color_scheme_id' => $color_scheme_id]);
            session()->flash('theme_success_message','Success!');
            return redirect()->back();
        } else {
            session()->flash('theme_error_message','Error!');
            return redirect()->back();
        }
    }


    public function store(Request $request)
    {

        $this->validate($request, [
            'address' => 'required',
            'title_bn' => 'required',
            'title_en' => 'required',
            'email' => 'required',
            'mobile' => 'required',
            'facebook' => 'required',
            'twitter' => 'required',
            'youtube' => 'required',
            'linkedin' => 'required',
        ]);

        $setting = Setting::first();

        $data = $request->except(['_token', 'logo', 'favicon']); // this fields are not received to $data array

        if($request->logo){
            $setting->logo = 'public/images/settings/'.ImageUploadHelper::update('logo', $request->file('logo'), 'logo-'.time(), 'public/images/settings', $setting->logo, 800, 400);
        }
        else{
            $setting->logo = $setting->logo;
        }

        if($request->favicon){
            $setting->favicon = 'public/images/settings/'.ImageUploadHelper::update('favicon', $request->file('favicon'), 'favicon-'.time(), 'public/images/settings', $setting->favicon);
        }
        else{
            $setting->favicon = $setting->favicon;
        }

        $data['favicon'] = $setting->favicon;
        $data['logo'] = $setting->logo;

        //$data['address'] = nl2br($request->address);
        $setting->update($data);

        session()->flash('update_message','Updated');
        return redirect()->route('admin.setting.index');
    }

}
