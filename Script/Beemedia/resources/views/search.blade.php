@extends('layouts.main')

@section('content')
<div class="container">
    <div id="all-output">
        <!-- ===================================== Cover Image =================================== -->
        <div id="category-cover-image">
            <div class="image-in">
                <img src="{{ Voyager::image(setting('site.background-Home')) }}" alt="" width="100%">
            </div>
            <h1 class="title"><i class="fa fa-youtube-play"></i>{{ setting('site.background-Home-Title') }}</h1>
            <ul class="category-info">
                <li class="subscribe"><a href="{{ setting('site.background-Home-link') }}">Subscribe</a></li>
            </ul>
        </div>
        <!-- ===================================== Cover Image =================================== -->
         <!-- ====================== search NULL =========== -->
        @if(isset($search) == '' || count($Posts) == 0)  
        <div class="alert alert-info" role="alert">
           NO SEARCH FOUND BEETER GO TO OUR HOME TO SEE MORE THINGS <a href="{{ url('/') }}" class="alert-link">{{ __('Home') }}
        </a>
        </div>
        @else

       <!-- ===================================== SEARCH FOUND =================================== -->
        <div id="category">
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                    <!-- ===================================== SEARCH FOUND =================================== -->
                     @foreach ($Posts as $Post)
                     <!-- video-item -->
                     <div class="col-sm-4">
                        <div class="video-item">
                            <div class="thumb">
                                <div class="hover-efect"></div>
                                <small class="time">{{ $Post->category->name }}</small>
                                @if($Post->image != null)
                                <a href="{{ url('posts') }}/{{ $Post->slug }}"><img src="{{ Voyager::image($Post->image) }}"></a>
                                @else($Post->image == null)
                                <div class="video-code">
                                <iframe width="100%" height="245" src="{{ $Post->vedio }}" frameborder="0" allowfullscreen>
                                </iframe>
                                </div>
                                <!-- // video-code -->
                                @endif
                            </div>
                            <!-- ===================================== SEARCH FOUND =================================== -->
                            <div class="video-info">
                                <a href="{{ url('posts') }}/{{ $Post->slug }}" class="title">{!! substr($Post->title, 0, 90) !!}</a>
                                <a class="channel-name" href="{{ url('users') }}/{{ $Post->user->name }}">{{ $Post->user->name }}<span>
                                <i class="fa fa-check-circle"></i></span></a>
                                
                                <span class="love"><i class="fa fa-heart-o"></i> {{ COUNT($Post->likes)  }} Like This </span>
                                
                                <span class="date"><i class="fa fa-clock-o"></i>{{ date('M j, Y', strtotime($Post->created_at)) }}</span>
                                </div>
                            </div>
                        </div>
                        <!-- // video-item -->
                        @endforeach
                        <!-- ===================================== SEARCH FOUND =================================== -->
                    </div><!-- // row -->
                    <!-- Loading More Videos -->
                    <div class="col-sm-12 text-center" >
                        {{ $Posts->links() }}
                    </div>
                    <!-- // Loading More Videos -->
                </div>
            </div><!-- // row -->
        </div>
        <!-- // category -->
      @endif
    </div>
</div>
@endsection
