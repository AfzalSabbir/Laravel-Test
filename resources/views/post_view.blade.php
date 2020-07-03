@extends('frontend.layouts.post')

@section('fav_title', __('backend/post.post') )

@section('styles')
<style>
    .ellipsis{
        overflow: hidden;
        white-space: nowrap;
        display: block;
        text-overflow: ellipsis;
    }
    .play-1, .play-2 {
        position: absolute;
        padding: 2px 1px 1px 3px;
        background: #f8f9fad4;
        border-radius: 3px;
        filter: invert(1);
    }
    .play-1 {
        bottom: 20px;
        right: 5px;
    }
    .play-2 {
        bottom: 5px;
        right: 5px;
    }
</style>
@endsection

@section('content')

<!-- Table Part -->
<div class="row">
    <div class="col-md-12">
        <div class="row">
            <div class="offset-md-3 col-md-6">
                <h3 class="mb-3">{{ $row->title }}</h3>
                @if($row->type == 1)
                <iframe style="width: 100%;" class="mb-3" height="315" src="https://www.youtube.com/embed/{{ $row->video }}" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
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
@endsection

@section('scripts')
@endsection