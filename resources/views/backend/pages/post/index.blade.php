<!-- Full Structure -->
@extends('backend.layouts.master')

@section('fav_title', __('backend/post.post') )

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
		<li class="breadcrumb-item active">{{ __('backend/post.post') }}</li>
	</ul>
</div>

<!-- Table Part -->
<div class="row">
	<div class="col-md-12">
		<div class="card">

			<div class="card-header">
				<div class="row">
					<div class="col-md-6"><h2><i class="{{ 'fa fa-table' }}"></i> {{ __('backend/post.post_list') }}</h2></div>
					<div class="col-md-6 btn-group justify-content-end">

						{{-- SubMenu --}}
			            @include('backend.partials.submenu', ['thisSubMenus' => $thisSubMenus, 'mySubMenus' => $mySubMenus])

					</div>
					<div class="clearfix"></div>
				</div>
			</div>

			<div class="card-body" data-my-table="table-1">
		        {{-- ERROR Message --}}
		        @include('backend.partials.error_message')

				<div class="toggle-table-column alert-info br-2 p-2 mb-2">
					<strong>{{ __('backend/default.table_toggle_message') }} </strong>

					<a href="#" class="toggle-vis" data-column="0"><b>{{ __('backend/default.sl') }}</b></a> |
					<a href="#" class="toggle-vis" data-column="1"><b>{{ __('backend/default.title') }}</b></a> |
					<a href="#" class="toggle-vis" data-column="2"><b>{{ __('backend/default.breaf') }}</b></a> |
					<a href="#" class="toggle-vis" data-column="3"><b>{{ __('backend/default.video') }}</b></a> |
					<a href="#" class="toggle-vis" data-column="4"><b>{{ __('backend/default.image') }}</b></a> |
					<a href="#" class="toggle-vis hide-on-load" data-column="5"><b>{{ __('backend/default.status') }}</b></a> |
					<a href="#" class="toggle-vis" data-column="6"><b>{{ __('backend/default.action') }}</b></a>

				</div>
				<div class="table-responsive pt-1">
					<!--Remove from Comment {{--...--}} for Pagination -->
					{{-- 
						<!-- Search and Select -->
						@include('backend.partials.pagination_page_numbering', ['route' => Route::currentRouteName(), 'items' => $items, 'total' => $total])
					--}}
					<table {{-- id="my-table" --}} id="datatable" class="table table-bordered table-hover rounded display">

						<thead>
							<th width="20">{{ __('backend/default.sl') }}</th>
							<th>{{ __('backend/default.title') }}</th>
							<th>{{ __('backend/default.breaf') }}</th>
							<th>{{ __('backend/default.video') }}</th>
							<th>{{ __('backend/default.image') }}</th>
							<th>{{ __('backend/default.status') }}</th>
							<th width="60" class="action">{{ __('backend/default.action') }}</th>
						</thead>
						<tbody>

							<!--Remove from Comment {{--...--}} -->

							@foreach ($rows as $row)
							<tr class="{{ $row->status == 0 ? 'inactive_':'' }}">
								<td>{{ $loop->index+1 }}</td>
								<td>{{ $row->title }}</td>
								<td>{{ $row->breaf }}</td>
								<td>
									@if($row->type == 1)
									<iframe width="60" height="30" src="https://www.youtube.com/embed/{{ $row->video }}" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
									@else
									N/A
									@endif
								</td>
								<td><img src="{{ asset($row->image) }}" alt="{{ $row->title }}" class="img-thumbnail"></td>

								<td>{{ $row->status == 1 ? 'Active' : 'Inactive' }}</td>
								<td class="action">
									<div class="btn-group">

										<!-- Checking Admin Access -->
										@foreach($permissions->submenus as $key => $permission)
										@if(\App\Models\Menu::checkBodyMenu($permission->id, $myRole->in_body))
                                        @if($key == 0)
                                        <a title="View" href="{{ route($permission->route, encrypt($row->id)) }}" class="btn btn-info"><i class="fa fa-eye"></i></a>
                                        @elseif($key == 1)
                                        <a title="{{ $row->status == 0 ? 'Publish':'UnPublish' }}" href="{{ route($permission->route, encrypt($row->id)) }}" class="btn {{ $row->status == 0 ? 'btn-success':' btn-warning' }}"><i class="fa fa-{{ $row->status == 0 ? 'upload':'download' }}"></i></a>
                                        @else
                                        <button title="Delete" class="btn {{ $row->status == 0 ? 'btn-secondary disabled':' btn-danger' }}" onClick="deleteMethod('{{ encrypt($row->id) }}')" role="button" {{ $row->status == 0? 'disabled':'' }}><i class="fa fa-trash"></i></button>
                                        @endif

										@endif
										@endforeach
									</div>
								</td>
							</tr>
							@endforeach
							
						</tbody>
					</table>
				</div>
				{{-- sending `$rows` and it'll be received by `$table` --}}

				<!--Remove from Comment {{--...--}} for Pagination -->
				{{--
					<!-- Paginaiton -->
					@include('backend.partials.pagination', ['table' => $rows])
				--}}
			</div>
		</div>
	</div>
</div>
@endsection

<!-- Write Scripts <script fileType="text/javascript">In Here</script> -->
@section('scripts')
@endsection