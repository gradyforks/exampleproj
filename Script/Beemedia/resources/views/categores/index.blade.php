@extends('layouts.main')

@section('content')
<!--================================================== CATEGORY_page ============================================== -->
<!--=================================== BACKGROUND CATEGORY_page ============================================== -->
<div id="main-category" class="hidden-sm hidden-xs">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <ul class="main-category-menu">
                    <li class="color-3"><a href="{{ url('categores') }}"><i class="fa fa-th-large"></i>Categories</a>
                        <ul>
                            <!--================ Foreach CATEGORY MENU ===================================== -->
                            @foreach ($Categores as $Category)
                            <li><a href="{{ url('categores') }}/{{ $Category->slug }}">{{ $Category->name}}</a></li>
                            @endforeach
                            <!--================ Foreach CATEGORY MENU ===================================== -->
                        </ul>
                    </li>

                </ul>
            </div><!-- // col-md-12 -->
        </div><!-- // row -->
    </div><!-- // container-full -->
</div><!-- // main-category -->
<!--=================================== BACKGROUND CATEGORY_page ============================================== -->
<!--================================================== CATEGORY_page ============================================== -->
<div class="container">
    <div id="all-output">
        <!-- Category Cover Image -->
        <div id="category-cover-image">
            <div class="image-in">
                <!--================ setting page categores ===================================== -->
                <img src="{{ Voyager::image(setting('page-categores.background-categores')) }}" alt="" width="100%">
            </div>
            <!--================ setting page categores Title ===================================== -->
            <h1 class="title"><i class="fa fa-trophy"></i>{{ setting('page-categores.background-Categores-Title') }}</h1>
            <ul class="category-info">
                <!--================ setting page categores Link ===================================== -->
                <li class="subscribe"><a href="{{ setting('page-categores.background-Categores-Link') }}">Subscribe</a></li>
            </ul>
        </div>
        <!-- // Category Cover Image -->
        
        <!-- category -->
        <div id="category">
            <div class="row">
                <div class="col-md-3">
                    <div class="advertising-block">
                        <h1 class="title">Advertising</h1>
                        <div class="advertising-code">
                            <!--================ Page categores Advertising Link ===================================== -->
                            <a href="{{ setting('ads.ads-categoers-three-link') }}">
                               <!--================ Page categores Advertising IMAGE ===================================== -->
                               <img src="{{ Voyager::image(setting('ads.ads-categoers-three-image')) }}" alt="">
                           </a>
                       </div>
                   </div>

                   <div class="share-in">
                    <h1 class="title">Find it Fast</h1>
                    <ul class="social-link">
                        <!--================ social link Facebook ===================================== -->
                        <li class="facebook"><a href="{{ setting('social-link.Facebook') }}"><i class="fa fa-facebook"></i>Facebook</a></li>
                        <!--================ social link Twitter ===================================== -->
                        <li class="twitter"><a href="{{ setting('social-link.Twitter') }}"><i class="fa fa-twitter"></i>Twitter</a></li>
                        <!--================ social link Google-plus ===================================== -->
                        <li class="google-plus"><a href="{{ setting('social-link.Google-plus') }}"><i class="fa fa-google-plus">
                        </i>Google-plus</a>
                    </li>
                    <!--================ social link Vimeo ===================================== -->
                    <li class="vimeo"><a href="{{ setting('social-link.Vimeo') }}"><i class="fa fa-vimeo"></i>Vimeo</a></li>
                </ul>
            </div>
        </div><!-- // col-md-2 -->

        <div class="col-md-9">
            <div class="col-sm-12 mb-30">
                <div class="row">
                <a href="{{ setting('ads.ads-categoers-one-link') }}"><img src="{{ Voyager::image(setting('ads.ads-categoers-one-image')) }}" alt="" width="100%""></a>
                </div>
                </div>
            <div class="row">
                <!--================ Foreach Categores ===================================== -->
                @foreach ($Categores as $Category)
                <!-- video-item -->
                <div class="col-sm-4">
                    <div class="video-item mt-0">
                        <div class="thumb thumbs">
                            <div class="hover-efect"></div>
                            <!--================ Foreach image Categores ===================================== -->
                            <a href="{{ url('categores') }}/{{ $Category->slug }}"><img src="{{ Voyager::image($Category->imagecat) }}" alt=""></a>
                        </div>
                        <div class="video-info">
                            <!--================ Foreach name Categores ===================================== -->
                            <a href="{{ url('categores') }}/{{ $Category->slug }}" class="title">{!! substr($Category->name, 0, 90) !!}</a>
                            <!--================ Foreach created_at Categores ===================================== -->
                            <span class="date"><i class="fa fa-clock-o"></i>{{ date('M j, Y', strtotime($Category->created_at)) }} </span>
                        </div>
                    </div>
                </div>
                <!-- // video-item -->
                @endforeach
                <!--================ Foreach Categores ===================================== -->   
            </div><!-- // row -->
            <div class="col-sm-12 mb-30">
                <div class="row">
                <a href="{{ setting('ads.ads-categoers-two-link') }}"><img src="{{ Voyager::image(setting('ads.ads-categoers-two-image')) }}" alt="" width="100%""></a>
                </div>
                </div>
        </div>
    </div><!-- // row -->
</div>
<!-- // category -->

</div>
</div>
<!--================================================== CATEGORY_page ============================================== -->  
@endsection
