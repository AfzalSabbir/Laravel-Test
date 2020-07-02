<?php

namespace App\Http\Controllers\Backend;

use Illuminate\Support\Facades\Blade;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Helpers\ImageUploadHelper;
use App\Helpers\QueryHelper;
use App\Helpers\StringHelper;
use App\Helpers\NumberHelper;
use App\Models\Category;

class CategoryController extends Controller
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
        $rows = Category::orderBy('status', 'desc')->orderBy('id', 'desc')->get();
        return view('backend.pages.category.index', compact('rows'));
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            '' => '',
        ]);
        $data = $request->except(['_token']);
        QueryHelper::simpleInsert('Category', $data);
        session()->flash('add_message', 'Added');
        return redirect()->route('admin.category.index');
    }

    public function update(Request $request, $id)
    {
        $id = decrypt($id);
        $category = Category::where('id', $id)->first();
        $this->validate($request, [
            '' => '',
        ]);
        $data = $request->except(['_token']);
        $category->update($data);
        session()->flash('update_message', 'Added');
        return redirect()->route('admin.category.index');
    }

    public function delete($id)
    {
        $category = Category::where('id', decrypt($id))->delete();
        session()->flash('deactive_message', 'Deactived');
        return redirect()->route('admin.category.index');
    }
}