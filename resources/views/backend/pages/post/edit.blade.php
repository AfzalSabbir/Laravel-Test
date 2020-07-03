<!-- Full Structure -->
@extends('backend.layouts.master')

@section('fav_title', __('backend/post.edit_post') )

<!-- Write Styles <style>In Here</style> -->
@section('styles')
@endsection

<!-- This Section Will Shown <body>In Here</body> -->
@section('content')
<!-- Top Management Part -->

<!--Remove from Comment {{--...--}} for Permission -->
{{-- Permission for Admin Access --}}


	<!-- Permission -->
	@php
	  $permissions = \App\Models\Menu::orderBy('id', 'desc')->where('url', substr(url()->current(), 1+strlen(url('/'))))->orWhere('url', substr(url()->current(), strlen(url('/'))))->first();

	  // 3 is user role
	  if (Auth::guard('admin')->user()->admin_role == 3) {
	    $myRole = \App\Models\Role::where('admin_id', Auth::guard('admin')->user()->id)->first();
	  } else {
	    $myRole = \App\Models\Role::where('role', Auth::guard('admin')->user()->admin_role)->first();
	  }

	  //get SubMenus
	  $thisRoute          = \Request::route()->getName();
	  $sub_menu_by_route  = \App\Helpers\ModuleHelper::get_menu_by_route($thisRoute);
	  $thisSubMenus       = current($sub_menu_by_route)['childs'];
	  $mySubMenus         = json_decode($myRole->sub_menu);
	@endphp

<div class="app-title">
	<div>
		<h1><i class="{{ 'fa fa-codiepie' }}"></i> {{ __('backend/post.post_management') }}</h1>
	</div>
	<ul class="app-breadcrumb breadcrumb">
		<li class="breadcrumb-item"><a href="{{ route('admin.home') }}">{{ __('backend/default.dashboard') }}</a></li>
		<li class="breadcrumb-item"><a href="{{ route('admin.post.index') }}">{{ __('backend/post.post') }}</a></li>
		<li class="breadcrumb-item active">{{ __('backend/default.edit') }}</li>
	</ul>
</div>

<!-- Edit Form Part -->
<div class="row">
	<div class="col-md-12">
		<div class="card">
			<div class="card-header">
				<div class="row">
					<div class="col-md-6"><h2><i class="{{ 'fa fa-pencil-square' }}"></i> {{ __('backend/post.edit_post') }}</h2></div>
					<div class="col-md-6 btn-group justify-content-end">

						{{-- SubMenu --}}
			            @include('backend.partials.submenu', ['thisSubMenus' => $thisSubMenus, 'mySubMenus' => $mySubMenus])
			            
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<div class="card-body">
				@include('backend.partials.error_message')
				<form class="form-horizontal" action="{{ route('admin.post.update', encrypt($row->id)) }}" method="post" enctype="multipart/form-data">
					@csrf


	                <div class="form-row">
	                    <div class="offset-md-3 col-md-6">
	                        <label for="title" class="label">Title</label>
	                        <div>
	                            <input type="text" class="form-control mb-2" name="title" id="title" value="{{ $row->title }}">
	                        </div>

	                        <label for="type" class="label">Section</label>
	                        <div>
	                            <select name="type" id="type" class="form-control mb-2">
	                            	<option value="1" {{ $row->type == 1 ? 'selected':'' }}>Section 1</option>
	                            	<option value="2" {{ $row->type == 2 ? 'selected':'' }}>Section 2</option>
	                            </select>
	                        </div>

	                        <label for="type" class="label">Post Type</label>
	                        <div>
	                            <select name="type" id="type" class="form-control mb-2">
	                            	<option value="1" {{ $row->type == 1 ? 'selected':'' }}>Video</option>
	                            	<option value="2" {{ $row->type == 2 ? 'selected':'' }}>Text</option>
	                            </select>
	                        </div>

							<div class="form-group video_container" style="{{ $row->video == 1 ? '':'display: none' }};">
		                        <label for="video" class="label">Video</label>
		                        <div class="input-group mb-2 mr-sm-2">
		                        	<div class="input-group-prepend">
		                        		<div class="input-group-text">https://www.youtube.com/watch?v=</div>
		                        	</div>
		                        	<input type="text" class="form-control" name="video" id="video" value="{{ $row->video }}" placeholder="Youtube Video Code">
		                        </div>
		                    </div>

							<div class="form-group imgae_container">
								<input type="hidden" name="old_image" value="{{ $row->image }}">
		                        <label for="image" class="label">Photo</label>
		                        <div class="custom-file">
									<input type="file" name="image" class="custom-file-input" id="imgae_input">
									<label class="custom-file-label alert-secondary" for="imgae_input">Choose file...</label>
								</div>
		                    </div>

	                        <label for="breaf" class="label">Breaf</label>
	                        <div>
	                            <textarea rows="5" class="form-control mb-2" name="breaf" id="breaf">{{ $row->breaf }}</textarea>
	                        </div>

	                        <label for="body" class="label">Body</label>
	                        <div>
	                            <textarea rows="10" class="form-control mb-2" name="body" id="body">{{ $row->body }}</textarea>
	                        </div>
							{{-- <button type="submit" class="btn btn-primary float-right btn-lg">{{ __('backend/post.post') }}</button> --}}
							<button type="submit" class="btn btn-primary float-right btn-lg">{{ __('backend/default.update') }}</button>
	                    </div>
	                </div>
				</form>
			</div>
		</div>
	</div>
</div>
@endsection

<!-- Write Scripts <script fileType="text/javascript">In Here</script> -->
@section('scripts')
@endsection