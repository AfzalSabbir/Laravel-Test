<?php

namespace App\Http\Controllers\Backend;

use Illuminate\Support\Facades\Blade;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Helpers\ImageUploadHelper;
use App\Helpers\QueryHelper;
use App\Helpers\StringHelper;
use App\Helpers\NumberHelper;
use App\Models\ExamplePagination;

class ExamplePaginationController extends Controller
{
    /**
     * Site Access
    **/
    public function __construct()
    {
        $this->middleware('admin');
        $this->initalItems = 50; //pagination per page items
    }

    public function index()
    {
        if (request()->filled('items')) {
            $items = request()->items;
        }else{
            $items = $this->initalItems;
        }
        $rows = ExamplePagination::orderBy('status', 'desc')
                ->orderBy('id', 'desc')
                ->paginate($items);
        $total = $rows->total();
        return view('backend.pages.example_pagination.index', compact('rows', 'total', 'items'));
    }

    public function add()
    {
        return view('backend.pages.example_pagination.add');
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            '' => '',
        ]);
        $data = $request->except(['_token']);
        QueryHelper::simpleInsert('ExamplePagination', $data);
        session()->flash('add_message', 'Added');
        return redirect()->route('admin.example_pagination.index');
    }

    public function view($id)
    {
        $id = decrypt($id);
        //$row = ExamplePagination::where('id', $id)->first();
        return view('backend.pages.example_pagination.view'/*, compact('row')*/);
    }

    public function edit($id)
    {
        $id = decrypt($id);
        //$row = ExamplePagination::where('id', $id)->first();
        return view('backend.pages.example_pagination.edit'/*, compact('row')*/);
    }

    public function update(Request $request, $id)
    {
        $id = decrypt($id);
        $example_pagination = ExamplePagination::where('id', $id)->first();
        $this->validate($request, [
            '' => '',
        ]);
        $data = $request->except(['_token']);
        $example_pagination->update($data);
        session()->flash('update_message', 'Added');
        return redirect()->route('admin.example_pagination.index');
    }

    public function delete($id)
    {
        $example_pagination = ExamplePagination::where('id', decrypt($id))->delete();
        session()->flash('deactive_message', 'Deactived');
        return redirect()->route('admin.example_pagination.index');
    }
}