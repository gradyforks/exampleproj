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
                                @foreach ($Catmenus as $Catmenu)
                                   <li><a href="{{ url('categores') }}/{{ $Catmenu->slug }}">{{ $Catmenu->name}}</a></li>
                                @endforeach
                                <!--================ Foreach CATEGORY MENU ===================================== -->
                            </ul>
                        </li>
                       
                    </ul>
                </div><!-- // col-md-14 -->
              </div><!-- // row -->
          </div><!-- // container-full -->
      </div><!-- // main-category -->
<!--================================================== CATEGORY_page ============================================== -->
<!--=================================== BACKGROUND CATEGORY_page ============================================== -->
      <div class="container">
        <div id="all-output">
            <!-- Category Cover Image -->
            <div id="category-cover-image">
                <div class="image-in">
                    <!--================ setting page categores ===================================== -->
                    <img src="{{ Voyager::image($Category->imagecat) }}" alt="" width="100%">
                </div>
                <!--================ Category name page categores ===================================== -->
                <h1 class="title"><i class="fa fa-check-circle"></i>{{ $Category->name }}</h1>
                <ul class="category-info">
                    <!--================ setting page categores ===================================== -->
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
                                <a href="{{ setting('ads.ads-categoers-single-two-link') }}">
                                <!--================ Page categores Advertising IMAGE ===================================== -->
                                <img src="{{ Voyager::image(setting('ads.ads-categoers-single-two-image')) }}" alt=""></a>
                            </div>
                        </div>

                        <div class="share-in">
                            <h1 class="title">Find it Fast</h1>
                            <ul class="social-link">
                                <!--================ social link Facebook ===================================== -->
                                <li class="facebook"><a href="{{ setting('social-link.Facebook') }}">
                                <i class="fa fa-facebook"></i>Facebook</a></li>
                                <!--================ social link Twitter ===================================== -->
                            <li class="twitter"><a href="{{ setting('social-link.Twitter') }}"><i class="fa fa-twitter"></i>Twitter</a></li>
                                <!--================ social link Google-plus ===================================== -->
                                <li class="google-plus"><a href="{{ setting('social-link.Google-plus') }}"><i class="fa fa-google-plus"></i>Google-plus</a></li>
                                <!--================ social link Vimeo ===================================== -->
                                <li class="vimeo"><a href="{{ setting('social-link.Vimeo') }}"><i class="fa fa-vimeo"></i>Vimeo</a></li>
                            </ul>
                        </div>

                        

                    </div><!-- // col-md-2 -->
                    
                    <div class="col-md-9">
                      <div class="col-sm-12 mb-30">
                            <div class="row">
                            <a href="{{ setting('ads.ads-categoers-single-link') }}"><img src="{{ Voyager::image(setting('ads.ads-categoers-single-image')) }}" alt="" width="100%""></a>
                        </div>
                        </div>
                         <div class="row">
                           <!--================ Foreach Posts SINGLE Categores ===================================== -->
                           @foreach ($Posts as $Post)
                            <!-- video-item -->
                            <div class="col-sm-6">
                                <div class="video-item mt-0">
                                    <div class="thumb thumbs">
                                        <div class="hover-efect"></div>
                                         <!--================ Post category name ===================================== -->
                                        <small class="time">{{ $Post->category->name }}</small>

                                        @if($Post->image != null)    
                                          <a href="{{ url('posts') }}/{{ $Post->slug }}">
                                            <!-- ======== Foreach Popular Posts SHOW IMAGE ==================================== -->
                                            <img src="{!! asset(Voyager::image($Post->image)) !!}">
                                          </a>
                                          <!-- ======== Foreach Popular Posts IF IMAGE NOT NULL SHOW IMAGE ==================================== -->
                                          @else($Post->image == null)
                                          <div class="video-code">
                                            <!-- ======== Foreach Popular Posts SHOW VIDEO ============================= -->
                                            <iframe width="100%"  height="270" src="{{ $Post->vedio }}" frameborder="0" allowfullscreen>
                                            </iframe>
                                          </div>
                                          <!-- // video-code -->
                                          @endif
                                    </div>
                                    <div class="video-info">
                                        <!--================ Post title ===================================== -->
                                        <a href="{{ url('posts') }}/{{ $Post->slug }}" class="title">{!! substr($Post->title, 0, 90) !!}</a>
                                        <span class="date"><i class="fa fa-clock-o"></i>
                                            <!--================ Post created_at ===================================== -->
                                            {{ date('M j, Y', strtotime($Post->created_at)) }}
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <!-- // video-item -->
                            @endforeach
                            <!--================ Foreach Posts SINGLE Categores ===================================== -->
                        </div><!-- // row -->
                        <!-- Loading More Videos -->
                        <div class="col-sm-12 text-center" >
                            <!--================ Post PAGINATION ===================================== -->
                            {{ $Posts->links() }}
                        </div>
                        <!-- // Loading More Videos -->

                    </div>


                </div><!-- // row -->
            </div>
            <!-- // category -->

        </div>
      </div>
<!--================================================== CATEGORY_page ============================================== -->
<!--=================================== BACKGROUND CATEGORY_page ============================================== -->      
@endsection
