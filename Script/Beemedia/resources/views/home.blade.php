@extends('layouts.main')

@section('content')
<!--================================================== HOME_page ==============================================-->
<div id="main-category" class="hidden-sm hidden-xs">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <ul class="main-category-menu">
                    <li class="color-3"><a href="#"><i class="fa fa-th-large"></i>Categories</a>
                        <ul>
                            <!--================ Foreach CATEGORY MENU ===================================== -->
                            @foreach ($Categores as $Category)
                            <li><a href="{{ url('categores') }}/{{ $Category->slug }}">{{ $Category->name}}</a></li>
                            @endforeach
                            <!--================ Foreach CATEGORY MENU ===================================== -->
                        </ul>
                    </li>                    
                </ul>
            </div><!-- // col-md-14 -->
        </div><!-- // row -->
    </div><!-- // container-full -->
</div><!-- // main-category -->
<!--================================================== HOME_page ==============================================-->
<div class="container">
    <div id="all-output">
     <!--================ Cover Image ===================================== -->
     <div id="category-cover-image">
        <div class="image-in">
            <!--================ Cover Image Background ===================================== -->
            <img src="{{ Voyager::image(setting('site.background-Home')) }}" alt="" width="100%">
        </div>
        <!--================ Cover Image Title ===================================== -->
        <h1 class="title"><img src="{{ Voyager::image(setting('site.logo')) }}" alt="logo" style="margin-right: 15px;
margin-bottom: 25px;">{{ setting('site.background-Home-Title') }}</h1>
        <ul class="category-info">
            <!--================ Cover Image link ===================================== -->
            <li class="subscribe"><a href="{{ setting('site.background-Home-link') }}">Subscribe</a></li>
        </ul>
    </div>
    <div class="col-sm-12">
        <div class="row">
        <a href="{{ setting('ads.ads-home-one-link') }}"><img src="{{ Voyager::image(setting('ads.ads-home-one-image')) }}" alt="" width="100%""></a>
    </div>
    </div>
    <!--================ Cover Image ===================================== -->
    <div id="category">
        <div class="row">
            <div class="col-sm-12">
                <div class="row">
                    
                    <!-- ============================ Posts  ======================= -->
                    @foreach ($Posts as $Post)
                    <!-- video-item -->
                    <div class="col-sm-4 col-xs-12">
                        <div class="video-item">
                            <div class="thumb">
                                <div class="hover-efect"></div>
                                <!-- ============================ Category Posts  ======================= -->
                                <small class="time">{{ $Post->category->name }}</small>
                                <!-- ============================ Category Posts image ======================= -->
                                @if($Post->image != null)
                                <a href="{{ url('posts') }}/{{ $Post->slug }}"><img src="{{ Voyager::image($Post->image) }}"></a>
                                @else($Post->image == null)
                                <div class="video-code">
                                    <!-- ============================ Category Posts Vedio ======================= -->
                                    <iframe width="100%" height="250" src="{{ $Post->vedio }}" frameborder="0" allowfullscreen>
                                    </iframe>
                                </div>
                                <!-- // video-code -->
                                @endif
                            </div>
                            <div class="video-info">
                                <!-- ============================  Posts TITLE ======================= -->
                                <a href="{{ url('posts') }}/{{ $Post->slug }}" class="title">{!! substr($Post->title, 0, 90) !!}</a>
                                <!-- ============================  Posts user name ======================= -->
                                <a class="channel-name" href="{{ url('users') }}/{{ $Post->user->name }}">{{ $Post->user->name }}<span>
                                    <i class="fa fa-check-circle"></i></span></a>
                                    <!-- ============================ COUNT Post likes ======================= -->
                                    <span class="love"><i class="fa fa-heart-o"></i> {{ COUNT($Post->likes)  }} Like This </span>
                                    <!-- ============================ Post created_at ======================= -->
                                    <span class="date"><i class="fa fa-clock-o"></i>{{ date('M j, Y', strtotime($Post->created_at)) }}</span>
                                </div>
                            </div>
                        </div>
                        <!-- // video-item -->
                        @endforeach
                        <!-- ============================ Posts  ======================= -->
                    </div><!-- // row -->
                    <div class="col-sm-12 text-center" >
                        <!-- ============================ Posts PAGINATION ======================= -->
                        {{ $Posts->links() }}
                        <!-- ============================ Posts PAGINATION ======================= -->
                    </div>
                </div>
            </div><!-- // row -->
        </div>
    </div>
</div>
<!--================================================== HOME_page ==============================================-->
@endsection
