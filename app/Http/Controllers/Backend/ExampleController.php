<?php

namespace App\Http\Controllers\Backend;

use Illuminate\Support\Facades\Blade;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Helpers\ImageUploadHelper;
use App\Helpers\QueryHelper;
use App\Helpers\StringHelper;
use App\Helpers\NumberHelper;
use App\Models\Example;

class ExampleController extends Controller
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
        $rows = Example::orderBy('status', 'desc')->orderBy('id', 'desc')->get();
        return view('backend.pages.example.index', compact('rows'));
    }

    public function add()
    {
        return view('backend.pages.example.add');
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            '' => '',
        ]);
        $data = $request->except(['_token']);
        QueryHelper::simpleInsert('Example', $data);
        session()->flash('add_message', 'Added');
        return redirect()->route('admin.example.index');
    }

    public function view($id)
    {
        $id = decrypt($id);
        //$row = Example::where('id', $id)->first();
        return view('backend.pages.example.view'/*, compact('row')*/);
    }

    public function edit($id)
    {
        $id = decrypt($id);
        //$row = Example::where('id', $id)->first();
        return view('backend.pages.example.edit'/*, compact('row')*/);
    }

    public function update(Request $request, $id)
    {
        $id = decrypt($id);
        $example = Example::where('id', $id)->first();
        $this->validate($request, [
            '' => '',
        ]);
        $data = $request->except(['_token']);
        $example->update($data);
        session()->flash('update_message', 'Added');
        return redirect()->route('admin.example.index');
    }

    public function delete($id)
    {
        $example = Example::where('id', decrypt($id))->delete();
        session()->flash('deactive_message', 'Deactived');
        return redirect()->route('admin.example.index');
    }
}