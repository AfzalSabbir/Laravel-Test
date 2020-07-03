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
    @media only screen and (min-width: 767.99px) {
        .border-left-2{
            border-left:  2px solid #ccc;
        }
    }
</style>
@endsection

@section('content')
<div class="container">
    <div class="row mt-2">
        <div class="col-md-8">
            @if(isset($posts[1]))
                <div class="form-row">
                    <div class="col-md-6">
                        @foreach ($posts[1] as $post)
                            @if($loop->index == 0)
                                <a href="{{ asset('post/'.$post->slug) }}" class="position-relative">
                                    <div class="position-relative">
                                        <img src="{{ asset($post->image) }}" alt="{{ $post->title }}" class="img-thumbnail mb-3">
                                        @if($post->type == 1)
                                            <img height="30px" class="play-1" src="{{ asset('public/images/play.png') }}"></img>
                                        @endif
                                    </div>
                                    <h4 class="ellipsis">{{ $post->title }}</h4>
                                    <p class="text-muted text-decoration-none">{!! $post->breaf !!}</p>
                                </a>
                            @endif
                        @endforeach
                    </div>
                    <div class="col-md-6">
                        <div class="form-row">
                        @foreach ($posts[1] as $post)
                            @if($loop->index != 0)
                                <div class="col-md-6">
                                    <a href="{{ asset('post/'.$post->slug) }}" class="position-relative">
                                        <div class="position-relative">
                                            <img src="{{ asset($post->image) }}" alt="{{ $post->title }}" class="img-thumbnail mb-0">
                                            @if($post->type == 1)
                                                <img height="25px" class="play-2" src="{{ asset('public/images/play.png') }}"></img>
                                            @endif
                                        </div>
                                        <strong class="ellipsis mb-1">{{ $post->title }}</strong>
                                    </a>
                                </div>
                            @endif
                        @endforeach
                        </div>
                    </div>
                </div>
            @else
            <p class="alert alert-info">No Data Available</p>
            @endif
        </div>
        <div class="col-md-4 border-left-2">
            @if(isset($posts[2]))
                <div class="form-row">
                    <div class="col-md-12">
                        @foreach ($posts[2] as $post)
                            @if($loop->index == 0)
                                <a href="{{ asset('post/'.$post->slug) }}" class="position-relative">
                                    <div class="position-relative">
                                        <img src="{{ asset($post->image) }}" alt="{{ $post->title }}" class="img-thumbnail mb-3">
                                        @if($post->type == 1)
                                            <img height="30px" class="play-1" src="{{ asset('public/images/play.png') }}"></img>
                                        @endif
                                    </div>
                                    <h4 class="ellipsis">{{ $post->title }}</h4>
                                    <p class="text-muted text-decoration-none">{!! $post->breaf !!}</p>
                                </a>
                            @endif
                        @endforeach
                    </div>
                    <div class="col-md-12">
                        <div class="form-row">
                        @foreach ($posts[2] as $post)
                            @if($loop->index != 0)
                                <div class="col-md-6">
                                    <a href="{{ asset('post/'.$post->slug) }}" class="position-relative">
                                        <div class="position-relative">
                                            <img src="{{ asset($post->image) }}" alt="{{ $post->title }}" class="img-thumbnail mb-0">
                                            @if($post->type == 1)
                                                <img height="25px" class="play-2" src="{{ asset('public/images/play.png') }}"></img>
                                            @endif
                                        </div>
                                        <strong class="ellipsis mb-1">{{ $post->title }}</strong>
                                    </a>
                                </div>
                            @endif
                        @endforeach
                        </div>
                    </div>
                </div>
            @else
            <p class="alert alert-info">No Data Available</p>
            @endif
        </div>
    </div>
</div>
@endsection

@section('scripts')
@endsection