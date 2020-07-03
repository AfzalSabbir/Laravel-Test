<?php

namespace App\Http\Controllers\Backend;

use Illuminate\Support\Facades\Blade;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Helpers\ImageUploadHelper;
use App\Helpers\QueryHelper;
use App\Helpers\StringHelper;
use App\Helpers\NumberHelper;
use App\Models\Post;

class PostController extends Controller
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
        $rows = Post::orderBy('status', 'desc')->orderBy('id', 'desc')->get();
        return view('backend.pages.post.index', compact('rows'));
    }

    public function publish($id)
    {
        $id = decrypt($id);
        $post = Post::where('id', $id)->first();

        if(!$post) abort(404);

        $post->update(['status'=>$post->status == 0 ? 1:0]);

        return redirect()->back();
    }

    public function add()
    {
        return view('backend.pages.post.add');
    }

    public function store(Request $request)
    {
        if ($request->type == 1) {
            $this->validate($request, [
                'title' => 'required|unique:posts',
                'type'  => 'required',
                'image' => 'required',
                'breaf' => 'required',
                'body'  => 'required',
                'video' => 'required',
            ]);
            $data = $request->except(['_token', 'image']);
        } else {
            $this->validate($request, [
                'title' => 'required|unique:posts',
                'type'  => 'required',
                'image' => 'required',
                'breaf' => 'required',
                'body'  => 'required',
            ]);
            $data = $request->except(['_token', 'image', 'video']);
        }


        if($request->image){
            $dir = 'public/images/post';
            $data['image'] = $dir.'/'.ImageUploadHelper::upload('image', $request->file('image'), time(), $dir);
        }

        $data['slug'] = StringHelper::createSlug($request->title, 'Post', 'slug');

        QueryHelper::simpleInsert('Post', $data);

        session()->flash('add_message', 'Added');
        return redirect()->route('admin.post.index');
    }

    public function view($id)
    {
        $id = decrypt($id);
        $row = Post::where('id', $id)->first();
        return view('backend.pages.post.view', compact('row'));
    }

    public function edit($id)
    {
        $id = decrypt($id);
        $row = Post::where('id', $id)->first();
        return view('backend.pages.post.edit', compact('row'));
    }

    public function update(Request $request, $id)
    {
        $id = decrypt($id);
        $post = Post::where('id', $id)->first();
        $this->validate($request, [
            '' => '',
        ]);
        $data = $request->except(['_token']);
        $post->update($data);
        session()->flash('update_message', 'Added');
        return redirect()->route('admin.post.index');
    }

    public function delete($id)
    {
        $post = Post::where('id', decrypt($id))->delete();
        session()->flash('inactive_message', 'Inactived');
        return redirect()->route('admin.post.index');
    }
}