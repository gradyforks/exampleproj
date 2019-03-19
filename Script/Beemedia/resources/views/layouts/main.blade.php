<!DOCTYPE html>
<html lang="en-US" itemscope="itemscope" itemtype="http://schema.org/WebPage">
<head>
  <!-- ====== Meta site ================== -->
  <meta charset="utf-8">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">
  <!-- ====== Laravel description site edit delete from admin panel ================== -->
  <meta name="description" content="{!! setting('site.description')  !!}">
  <!-- ====== Laravel author site edit delete from admin panel ====================== -->
  <meta name="author" content="{!! setting('site.author_title') !!}">
  <!-- ====== Laravel keywords site edit delete from admin panel ================== -->
  <meta name="keywords" content="{!! setting('site.keywords') !!}">
  <!-- ====== Laravel robots site edit delete from admin panel ================== -->
  <meta name="robots" content="{!! setting('site.robots') !!}">
  <!-- ====== Laravel favicon icon================== -->
  <link rel="apple-touch-icon" sizes="57x57" href="{{ asset('assets/img/favicon/apple-icon-57x57.png') }}">
  <link rel="apple-touch-icon" sizes="60x60" href="{{ asset('assets/img/favicon/apple-icon-60x60.png') }}">
  <link rel="apple-touch-icon" sizes="72x72" href="{{ asset('assets/img/favicon/apple-icon-72x72.png') }}">
  <link rel="apple-touch-icon" sizes="76x76" href="{{ asset('assets/img/favicon/apple-icon-76x76.png') }}">
  <link rel="apple-touch-icon" sizes="114x114" href="{{ asset('assets/img/favicon/apple-icon-114x114.png') }}">
  <link rel="apple-touch-icon" sizes="120x120" href="{{ asset('assets/img/favicon/apple-icon-120x120.png') }}">
  <link rel="apple-touch-icon" sizes="144x144" href="{{ asset('assets/img/favicon/apple-icon-144x144.png') }}">
  <link rel="apple-touch-icon" sizes="152x152" href="{{ asset('assets/img/favicon/apple-icon-152x152.png') }}">
  <link rel="apple-touch-icon" sizes="180x180" href="{{ asset('assets/img/favicon/apple-icon-180x180.png') }}">
  <link rel="icon" type="image/png" sizes="192x192"  href="{{ asset('assets/img/favicon/android-icon-192x192.png') }}">
  <link rel="icon" type="image/png" sizes="32x32" href="{{ asset('assets/img/favicon/favicon-32x32.png') }}">
  <link rel="icon" type="image/png" sizes="96x96" href="{{ asset('assets/img/favicon/favicon-96x96.png') }}">
  <link rel="icon" type="image/png" sizes="16x16" href="{{ asset('assets/img/favicon/favicon-16x16.png') }}">
  <link rel="manifest" href="{{ asset('assets/img/favicon/manifest.json') }}">
  <meta name="msapplication-TileColor" content="#ffffff">
  <meta name="msapplication-TileImage" content="{{ asset('assets/img/favicon/ms-icon-144x144.png') }}">
  <meta name="theme-color" content="#ffffff">
  <!-- ====== Laravel favicon icon================== -->
  <!-- ====== Laravel title site edit delete from admin panel ================== -->
  <title>{{ setting('site.title') }}</title>
  <!-- ====== apple-touch-icon ================== -->
  <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/bootstrap.min.css') }}" media="all" />
  <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/font-awesome.min.css') }}" media="all" />
  <!--Google Fonts-->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800|Raleway:400,500,700|Roboto:300,400,500,700,900|Ubuntu:300,300i,400,400i,500,500i,700" rel="stylesheet">
  <!-- Main CSS -->
  <link rel="stylesheet" href="{{ asset('assets/css/style.css') }}" />
  <!-- Responsive CSS -->
  <link rel="stylesheet" href="{{ asset('assets/css/responsive.css') }}" />
</head>

<body>
  <!--======= header ================================================================================-->
  <header>
    <div class="container">
      <div class="row">
        <div class="col-lg-1 col-md-2 col-sm-4">
          <a id="main-category-toggler" class="hidden-md hidden-lg hidden-md hidden-sm"  href="#">
            <i class="fa fa-navicon"></i>
          </a>
          <a id="main-category-toggler-close" class="hidden-md hidden-lg hidden-md" href="#">
            <i class="fa fa-close"></i>
          </a>
          <div id="logo">
            <!--================================================== logo SITE ==============================================-->
            <a href="{{ url('/') }}"><img src="{{ Voyager::image(setting('site.logo')) }}" alt="logo"></a>
          </div>
        </div><!-- // col-md-2 -->
        <div class="col-md-2 col-sm-6 hidden-xs hidden-sm">
          <div class="search-form">
            <!-- ==================   start Form search =======================================================  -->             
            {!! Form::open(['method'=>'GET','url'=>'search','role'=>'search','id'=>'search']) !!}
            {{ csrf_field() }}
            
            <input type="search" name="search"  placeholder="Search..." autocomplete="off">
            <input type="submit"  />
            
            {!! Form::close() !!}
            <!-- ==================   End Form search =========================================================  -->

          </div>
        </div><!-- // col-md-3 -->
        <div class="col-sm-6 hidden-sm hidden-xs">
          <ul class="top-menu">
            <!--==================================== Top-menu SITE ==============================================-->
            {{ menu('Top-menu') }}
          </ul>
        </div><!-- // col-md-4 -->
        <!--==================================== dropdown-menu account-menu ==============================================-->
        @guest
        <div class="col-lg-2 col-md-2 col-sm-3  col-xs-12 pull-right">
          <div class="dropdown">
            <a data-toggle="dropdown" href="#" class="user-area">
              <!--==================================== Avatar.png ==============================================-->
              <div class="thumb"><img src="{{ asset('assets/img/Avatar.png') }}" alt="Avatar"></div>
              <h2>Hello Gest</h2>
              <h3>Bee Need You</h3>
              <i class="fa fa-angle-down"></i>
            </a>
            <ul class="dropdown-menu account-menu">
              <!--==================================== Login LINK ==============================================-->
              <li><a href="{{ route('login') }}"><i class="fa fa-user color-1"></i>{{ __('Login') }}</a></li>
              <!--==================================== Register LINK ==============================================-->
              <li><a href="{{ route('register') }}"><i class="fa fa-user color-2"></i>{{ __('Register') }}</a></li>
            </ul>
          </div>
        </div>
        @else
        @if(Auth::user()->role_id == '1')
        <!--==================================== dropdown-menu account-menu ==============================================-->
        <div class="col-lg-2 col-md-2 col-sm-3 col-xs-12  pull-right">
          <div class="dropdown">
            <!-- ==================================== Auth::user()->name ==============================================-->
            <a data-toggle="dropdown" href="{{ url('users') }}/{{ Auth::user()->name }}" class="user-area">
              <!-- ==================================== Auth::user()->avatar ============================================-->
              <div class="thumb"><img src="{!! asset(Voyager::image(Auth::user()->avatar)) !!}" alt=""></div>
              <!--==================================== Auth::user()->NAME ==============================================-->
              <h2>{{ Auth::user()->name }}</h2>
              <!--==================================== Auth::user()->email ==============================================-->
              <h3>{{ Auth::user()->email }}</h3>
              <i class="fa fa-angle-down"></i>
            </a>
            <ul class="dropdown-menu account-menu">
              <!--==================================== My Profile LINK ==============================================-->
              <li><a href="{{ url('admin') }}"><i class="fa fa-user color-2"></i> My Admin</a></li>
              <!--==================================== logout LINK ==============================================-->
              <li><a href="{{ route('logout') }}" onclick="event.preventDefault();document.getElementById('logout-form').submit();">
               <i class="fa fa-sign-out color-4"></i>{{ __('Logout') }}</a>
             </li>
             <!--==================================== route logout FORM ==============================================-->
             <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
               @csrf
             </form>
             <!--==================================== route logout FORM ==============================================-->
           </ul>
         </div>
       </div>
       @else
        <!--==================================== dropdown-menu account-menu ==============================================-->
        <div class="col-lg-2 col-md-2 col-sm-3 col-xs-12  pull-right">
          <div class="dropdown">
            <!-- ==================================== Auth::user()->name ==============================================-->
            <a data-toggle="dropdown" href="{{ url('users') }}/{{ Auth::user()->name }}" class="user-area">
              <!-- ==================================== Auth::user()->avatar ============================================-->
              <div class="thumb"><img src="{!! asset(Voyager::image(Auth::user()->avatar)) !!}" alt=""></div>
              <!--==================================== Auth::user()->NAME ==============================================-->
              <h2>{{ Auth::user()->name }}</h2>
              <!--==================================== Auth::user()->email ==============================================-->
              <h3>{{ Auth::user()->email }}</h3>
              <i class="fa fa-angle-down"></i>
            </a>
            <ul class="dropdown-menu account-menu">
              <!--==================================== My Profile LINK ==============================================-->
              <li><a href="{{ url('users') }}/{{ Auth::user()->name }}"><i class="fa fa-user color-2"></i> My Profile</a></li>
              <!--==================================== My Profile LINK ==============================================-->
              <li><a href="{{ url('users') }}/{{ Auth::user()->name }}/edit"><i class="fa fa-edit color-1"></i>Edit profile</a></li>
              <!--==================================== Upload LINK ==============================================-->
              <li><a href="{{ url('posts') }}/create"><i class="fa fa-cloud-upload color-2"></i>Upload</a></li>
              <!--==================================== Favorites LINK ==============================================-->
              <li><a href="{{ url('users') }}/{{ Auth::user()->name }}"><i class="fa fa-star color-3"></i>Favorites</a></li>
              <!--==================================== logout LINK ==============================================-->
              <li><a href="{{ route('logout') }}" onclick="event.preventDefault();document.getElementById('logout-form').submit();">
               <i class="fa fa-sign-out color-4"></i>{{ __('Logout') }}</a>
             </li>
             <!--==================================== route logout FORM ==============================================-->
             <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
               @csrf
             </form>
             <!--==================================== route logout FORM ==============================================-->
           </ul>
         </div>
       </div>
       @endif
       @endguest
       
     </div><!-- // row -->
   </div><!-- // container-full -->
 </header><!-- // header -->
 <div id="main-category">
  <div class="container-full">
    <div class="row">
      <div class="col-md-12">
        <ul class="main-category-menu">
          <li class="color-3 hidden-md hidden-lg hidden-md "><a href="#"><i class="fa fa-th-large"></i>Menu</a>
           <!--==================================== Top-menu ==============================================-->
           {{ menu('Top-menu') }}
           <!--==================================== Top-menu ==============================================-->
         </li>
       </ul>
     </div><!-- // col-md-14 -->
   </div><!-- // row -->
 </div><!-- // container-full -->
</div><!-- // main-category -->
<!-- ============================================================= Header End ============================================================= -->
@yield('content')
<!-- ============================================================= Footer Start =========================================================== -->
<footer>
  <!-- ====== Laravel title site edit delete from admin panel ================== -->
  <p class="text-center">© 2019 Your Site {{ setting('site.title') }}</p>
</footer>
<!-- ====== jquery-3.2.1.min.js ================== -->
<script src="{{ asset('assets/js/jquery-3.2.1.min.js') }}"></script>
<!-- ====== jquery.sticky-kit.min.js ================== -->
<script src="{{ asset('assets/js/jquery.sticky-kit.min.js') }}"></script>
<!-- ====== custom.js ================== -->
<script src="{{ asset('assets/js/custom.js') }}"></script>
<!-- ====== bootstrap.min.js ================== -->
<script src="{{ asset('assets/js/bootstrap.min.js') }}"></script>
<!-- ====== imagesloaded.pkgd.min.js ================== -->
<script src="{{ asset('assets/js/imagesloaded.pkgd.min.js') }}"></script>
<!-- ====== grid-blog.min.js ================== -->
<script src="{{ asset('assets/js/grid-blog.min.js') }}"></script>

</body>

</html>
