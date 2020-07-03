<!-- Full Structure -->
@extends('backend.layouts.master')

@section('fav_title', __('backend/post.view_post') )

<!-- Write Styles <style>In Here</style> -->
@section('styles')
	<style>
		.iFrame {
			margin: 0 auto;
			justify-content: stretch;
		    display: flex;
		}
	</style>
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
		<li class="breadcrumb-item active">{{ __('backend/default.view') }}</li>
	</ul>
</div>

<!-- Table Part -->
<div class="row">
	<div class="col-md-12">
		<div class="card">

			<div class="card-header">
				<div class="row">
					<div class="col-md-6"><h2><i class="{{ 'fa fa-eye' }}"></i> {{ __('backend/post.view_post') }}</h2></div>
					<div class="col-md-6 btn-group justify-content-end">

						{{-- SubMenu --}}
						@include('backend.partials.submenu', ['thisSubMenus' => $thisSubMenus, 'mySubMenus' => $mySubMenus])

					</div>
					<div class="clearfix"></div>
				</div>
			</div>

			<div class="card-body">

				<div class="row">
					<div class="offset-md-3 col-md-6">
						<h3 class="mb-3">{{ $row->title }}</h3>
						@if($row->type == 1)
						<iframe style="width: 100%;" class="mb-3" height="" src="https://www.youtube.com/embed/{{ $row->video }}" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
						@else
						<img style="width: 100%;" src="{{ asset($row->image) }}" alt="{{ $row->title }}" class="img-thumbnail mb-3">
						@endif
						<p class="text-muted">{!! $row->breaf !!}</p>
						<p class="text-justify">{!! $row->body !!}</p>
						<hr />
						<p>
                            Share: <a href="https://www.facebook.com/sharer/sharer.php?u={{ asset('post/'.$row->slug) }}" target="_blank"> Facebook </a> | <a href="https://twitter.com/intent/tweet?url={{ asset('post/'.$row->slug) }}&text={{ $row->title }}" target="_blank"> Twitter </a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
@endsection

<!-- Write Scripts <script fileType="text/javascript">In Here</script> -->
@section('scripts')
@endsection