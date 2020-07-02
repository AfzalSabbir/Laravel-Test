<?php

namespace App\Http\Controllers\Backend;

use Illuminate\Support\Facades\Blade;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Helpers\ImageUploadHelper;
use App\Helpers\QueryHelper;
use App\Helpers\StringHelper;
use App\Helpers\NumberHelper;
use App\Models\ExampleModal;

class ExampleModalController extends Controller
{
    /**
     * Site Access
    **/
    public function __construct()
    {
        $this->middleware('admin');
    }

    public function index()
    {
        $rows = ExampleModal::orderBy('status', 'desc')->orderBy('id', 'desc')->get();
        return view('backend.pages.example_modal.index', compact('rows'));
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            '' => '',
        ]);
        $data = $request->except(['_token']);
        QueryHelper::simpleInsert('ExampleModal', $data);
        session()->flash('add_message', 'Added');
        return redirect()->route('admin.example_modal.index');
    }

    public function update(Request $request, $id)
    {
        $id = decrypt($id);
        $example_modal = ExampleModal::where('id', $id)->first();
        $this->validate($request, [
            '' => '',
        ]);
        $data = $request->except(['_token']);
        $example_modal->update($data);
        session()->flash('update_message', 'Added');
        return redirect()->route('admin.example_modal.index');
    }

    public function delete($id)
    {
        $example_modal = ExampleModal::where('id', decrypt($id))->delete();
        session()->flash('deactive_message', 'Deactived');
        return redirect()->route('admin.example_modal.index');
    }
}