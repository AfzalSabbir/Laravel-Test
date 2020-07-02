<?php

namespace App\Http\Controllers\Backend;

use App\Helpers\QueryHelper;
use App\Http\Controllers\Controller;
use App\Models\Role;
use App\Models\Admin;
use Auth;
use Illuminate\Http\Request;

class RoleController extends Controller
{
	public function __construct()
	{
		$this->middleware('admin');
	}


	public function index()
	{
		return view('backend.pages.role.index');
	}


	public function create()
	{
		$role = explode('/', \Request::fullUrl());
		$role = end($role);
		
		// set tiny value according to admin type
		if($role == 'super-admin'){
			$role = 1;
			$admin_id = Admin::orderBy('id', 'desc')->where('admin_role', $role)->where('status', 1)->first();
		}
		else if($role == 'admin'){
			$role = 2;
			$admin_id = Admin::orderBy('id', 'desc')->where('admin_role', $role)->where('status', 1)->first();
		}
		else{
			$role = 3;
			$admin_id = Admin::orderBy('id', 'desc')->where('admin_role', $role)->where('status', 1)->first();

			$where = [
				'role' => $role,
				'admin_id' => $admin_id->id
			];

			$admin = Role::firstOrNew($where);
			$admin->save();

			return redirect()->route('admin.role.assign.user',[encrypt($admin_id->id)]);
		}
		$condition = array(
			'role' => $role,
			'admin_id' => $admin_id->id
		);

		$admin_id = $admin_id->id;

		$menus = QueryHelper::simpleRead('Menu', 'order', 'desc')->sortByDesc('id');
		$role_wise = QueryHelper::complexSingleRead('Role', $condition);
		return view('backend.pages.role.assign', compact('menus', 'role', 'role_wise', 'admin_id'));
	}


	public function userCreate($admin_id = null)
	{
		if (!$admin_id) {
			redirect()->route('admin.role.assign_user');
		}

		$admin_id = decrypt($admin_id);
		$role = 'user';

		// set tiny value according to admin type
		$role_type = $role;
		if($role == 'super-admin'){
			$role = 1;
		}
		else if($role == 'admin'){
			$role = 2;
		}
		else{
			$role = 3;
		}

		$where = [
			'role' => $role,
			'admin_id' => $admin_id
		];
		
		$admin = Role::firstOrNew($where);
		$admin->save();

		$condition = array(
			'role' => $role,
			'admin_id' => $admin_id
		);
		$menus = QueryHelper::simpleRead('Menu', 'order', 'desc');
		$role_wise = QueryHelper::complexSingleRead('Role', $condition);
		return view('backend.pages.role.user_assign', compact('menus', 'role', 'role_wise', 'admin_id', 'role_type'));
	}


	public function store(Request $request)
	{
		$admin_id = decrypt($request->admin_id);
		// if no permissions then deleteing row
		if (!$request->menu[0] == true && !$request->submenu[0] == true && !$request->in_body[0]) {
			$where_ = array(
				'admin_id' => $admin_id,
			);
			QueryHelper::delete('Role', $where_);
			session()->flash('update_message', 'Role');
			// return redirect()->route('admin.home');
			return redirect()->back();
		}

		$order_menu = $request->menu; // all menus that is selected by super admin
		$order_sub_menu = $request->submenu; // all submenus that is selected by super admin
		$order_in_body = $request->in_body; // all in body menus that is selected by super admin
		$order_inner_in_body = $request->inner_in_body; // all in body menus that is selected by super admin

		// loop through size of the menu
		if (!empty($order_menu)) {
			for($i=0; $i<sizeof($order_menu); $i++){
				// get the value of order of menu 
				$current_menu = QueryHelper::getDbSingleResults('menus', array('id' => $request->menu[$i]))->order;
				// loop through all the menus to check order of the menus each other
				for($j=$i; $j<sizeof($order_menu); $j++){
					// get the value of order menu to compare
					$compare_with_menu = QueryHelper::getDbSingleResults('menus', array('id' => $request->menu[$j]))->order;
					// condition of bubble sort to change value according to order
					if($current_menu > $compare_with_menu){
						$temp = $order_menu[$i];
						$order_menu[$i] = $order_menu[$j];
						$order_menu[$j] = $temp;
					}
				}
			}
		}

		// loop through size of the submenu
		if($request->submenu){
			for($i=0; $i<sizeof($order_sub_menu); $i++){
				// get the value of order of submenu 
				$current_menu = QueryHelper::getDbSingleResults('menus', array('id' => $request->submenu[$i]))->order;
				// loop through all the menus to check order of the submenus each other
				for($j=$i; $j<sizeof($order_sub_menu); $j++){
					// get the value of order submenu to compare
					$compare_with_menu = QueryHelper::getDbSingleResults('menus', array('id' => $request->submenu[$j]))->order;
					// condition of bubble sort to change value according to order
					if($current_menu > $compare_with_menu){
						$temp = $order_sub_menu[$i];
						$order_sub_menu[$i] = $order_sub_menu[$j];
						$order_sub_menu[$j] = $temp;
					}
				}
			}
		}

		// loop through size of the inbody menus
		if($request->in_body){
			for($i=0; $i<sizeof($order_in_body); $i++){
				// get the value of order of inbody menus 
				$current_menu = QueryHelper::getDbSingleResults('menus', array('id' => $request->in_body[$i]))->order;
				// loop through all the menus to check order of the inbody menus each other
				for($j=$i; $j<sizeof($order_in_body); $j++){
					// get the value of order inbody menus to compare
					$compare_with_menu = QueryHelper::getDbSingleResults('menus', array('id' => $request->in_body[$j]))->order;
					// condition of bubble sort to change value according to order
					if($current_menu > $compare_with_menu){
						$temp = $order_in_body[$i];
						$order_in_body[$i] = $order_in_body[$j];
						$order_in_body[$j] = $temp;
					}
				}
			}
		}

		// loop through size of the inner inbody menus
		if($request->inner_in_body){
			for($i=0; $i<sizeof($order_inner_in_body); $i++){
				// get the value of order of inbody menus 
				$current_menu = QueryHelper::getDbSingleResults('menus', array('id' => $request->inner_in_body[$i]))->order;
				// loop through all the menus to check order of the inbody menus each other
				for($j=$i; $j<sizeof($order_inner_in_body); $j++){
					// get the value of order inbody menus to compare
					$compare_with_menu = QueryHelper::getDbSingleResults('menus', array('id' => $request->inner_in_body[$j]))->order;
					// condition of bubble sort to change value according to order
					if($current_menu > $compare_with_menu){
						$temp = $order_inner_in_body[$i];
						$order_inner_in_body[$i] = $order_inner_in_body[$j];
						$order_inner_in_body[$j] = $temp;
					}
				}
			}
		}

		$all_menu = $order_menu == null ? null:json_encode($order_menu); // encode menus
		$all_sub_menu = $order_sub_menu == null ? null:json_encode($order_sub_menu); // encode submenus
		$all_in_body = $order_in_body == null ? null:json_encode($order_in_body); // encode in body menus
		$all_inner_in_body = $order_inner_in_body == null ? null:json_encode($order_inner_in_body); // encode inner in body menus
		
		$data = array(
			'menu'     		=> $all_menu,
			'sub_menu' 		=> $all_sub_menu,
			'in_body'  		=> $all_in_body,
			'inner_in_body' => $all_inner_in_body,
			'role'     		=> $request->role_type
		);

		if(isset($request->admin_id)){
			$data['admin_id'] = $admin_id;
			$condition = array(
				'admin_id' => $admin_id
			);
		}
		else{
			$condition = array(
				'role' => $request->role_type
			);
		}

		// if role is set for this user_role then update otherwise create for this role
		if(QueryHelper::complexSingleRead('Role', $condition)){
			QueryHelper::simpleUpdate('Role', $data, $condition);
		}
		else{
			QueryHelper::simpleInsert('Role', $data);
		}

		session()->flash('update_message', 'Role');
		// return redirect()->route('admin.role.index');
		return redirect()->back();
	}
}
