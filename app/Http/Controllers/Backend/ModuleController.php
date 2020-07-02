<?php

namespace App\Http\Controllers\Backend;

use Illuminate\Support\Facades\Blade;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Helpers\ImageUploadHelper;
use App\Helpers\QueryHelper;
use App\Helpers\StringHelper;
use App\Helpers\NumberHelper;
use App\Models\Module;
use App\Models\ModuleTag;

use Auth;

class ModuleController extends Controller
{
    /**
     * Site Access
    **/
    public function __construct()
    {
        $this->middleware('admin');
        $this->initalItems = 0; //pagination per page items
    }

    public function index()
    {
        if ($this->initalItems > 0) {
            if (request()->filled('items')) {
                $items = request()->items;
            }else{
                $items = $this->initalItems;
            }
            $rows = Module::orderBy('status', 'desc')
                    ->orderBy('id', 'desc')
                    ->paginate($items);
            $total = $rows->total();
            return view('backend.pages.module.index', compact('rows', 'total', 'items'));
        } else {
            $rows = Module::orderBy('title', 'asc')
                    ->where(['status'=>'1', 'trash'=>'0'])
                    ->get();
            return view('backend.pages.module.index', compact('rows'));
        }
    }

    public function add()
    {
        return view('backend.pages.module.add');
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'title'         => 'required',
            'description'   => 'required',
            'tags'          => 'required'
        ]);

        $data = $request->except(['_token', 'tags']);
        $data['admin_id'] = Auth::guard('admin')->user()->id;

        $tags = array_unique(explode(',', strtolower(str_replace(' ', '', $request->tags))));
        $tag_id = [];
        foreach ($tags as $key => $value) {
            $moduleTag = ModuleTag::firstOrNew(['tag' => $value]);

            if (!empty($moduleTag->id)) {
                $tag_id[] = $moduleTag->id;
            } else {
                $moduleTag->save();
                $tag_id[] = $moduleTag->id;
            }
        }

        $data['module_tag_id'] = json_encode($tag_id);

        QueryHelper::simpleInsert('Module', $data);
        session()->flash('add_message', 'Added');
        return redirect()->route('admin.module.index');
    }

    public function edit($id)
    {
        //$row = Module::where('id', $id)->first();
        return view('backend.pages.module.edit'/*, compact('row')*/);
    }

    public function update(Request $request, $id)
    {
        $this->validate($request, [
            '' => '',
        ]);

        $data = $request->except(['_token', 'tags']);
        $data['admin_id'] = Auth::guard('admin')->user()->id;

        $tags = array_unique(explode(',', strtolower(str_replace(' ', '', $request->tags))));
        $tag_id = [];
        foreach ($tags as $key => $value) {
            $moduleTag = ModuleTag::firstOrNew(['tag' => $value]);

            if (!empty($moduleTag->id)) {
                $tag_id[] = $moduleTag->id;
            } else {
                $moduleTag->save();
                $tag_id[] = $moduleTag->id;
            }
        }

        $data['module_tag_id'] = json_encode($tag_id);

        $module = Module::where('id', $id)->first();

        $module->update($data);
        session()->flash('update_message', 'Added');
        return redirect()->route('admin.module.index');
    }

    public function delete($id)
    {
        Module::where('id', $id)->delete();
        session()->flash('deactive_message', 'Deactived');
        return redirect()->route('admin.module.index');
    }


    public function get_tegs(Request $request)
    {
        $tags = json_decode($request->id);
        $result = ModuleTag::select('tag')->whereIn('id', $tags)->get();
        $a = '';
        foreach ($result as $key => $value) {
            $a .= $value->tag.',';
        }
        return json_encode(rtrim($a, ','));
    }

    public function get_description(Request $request)
    {
        $id = $request->id;
        return json_encode(Module::where('id', $id)->first());
    }
}