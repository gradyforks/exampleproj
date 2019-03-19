@extends('layouts.main')

@section('content')
<!-- ========================================== users PAGE ============================ -->
<div class="container">
    <div id="all-output">
        <!-- ========================================== users background-Users Cover Image ============================ -->
        <div id="category-cover-image">
          <div class="image-in">
            <!-- ========================================== users background-Users Cover Image ============================ -->
            <img src="{{ Voyager::image(setting('page-users.background-Users')) }}" 
              alt="{{ setting('page-users.background-Users-Title') }}" width="100%">
        </div>
        <!-- ========================================== users background-Users Cover Title ============================ -->
        <h1 class="title"><i class="fa fa-user"></i>{{ setting('page-users.background-Users-Title') }}</h1>
        <ul class="category-info">
        <!-- ========================================== users background-Users Cover Link ============================ -->
            <li class="subscribe"><a href="{{ setting('page-users.background-Users-Link') }}">Subscribe</a></li>
        </ul>
    </div>
<!-- ========================================== users background-Users Cover Image ============================ -->
<div class="col-sm-12 mb-30">
        <div class="row">
        <a href="{{ setting('ads.ads-user-link') }}"><img src="{{ Voyager::image(setting('ads.ads-user-image')) }}" alt="" width="100%""></a>
    </div>
    </div>
    <div id="category">
      <div class="row">

          <div class="col-md-12">
            <div class="row">
<!-- ========================================== ALL Users  ============================ -->
                @foreach($Users as $User)
                <!-- Chanels Item -->
                <div class="col-md-6">
                    <div class="chanel-item">
                        <div class="chanel-thumb">
                            <a href="{{ url('users') }}/{{ $User->name }}">
                                <!-- ==========================================  User  ============================ -->
                                <img src="{!! asset(Voyager::image( $User->avatar )) !!}" alt="{{ $User->name }}">
                            </a>
                        </div>
                        <div class="chanel-info">
                            <!-- ========================================== User  ============================ -->
                            <a class="title" href="{{ url('users') }}/{{ $User->name }}">{{ $User->name }}</a>
                            <!-- ========================================== User  ============================ -->
                            <span class="subscribers">{{ COUNT($User->Points)  }} <i class="fa fa-star"></i></span>
                        </div>
                        <a href="{{ url('users') }}/{{ $User->name }}" class="subscribe">Profile</a>
                    </div>
                </div>
                <!-- // Chanels Item -->
                @endforeach 
<!-- ========================================== ALL Users  ============================ -->                
            </div><!-- // row -->
            <!-- Loading More Videos -->
            <div class="col-sm-12 text-center" >
             {{ $Users->links() }}
         </div>
         <!-- // Loading More Videos -->
     </div>
 </div><!-- // row -->
</div>
</div>
</div>
<!-- ========================================== users PAGE ============================ -->
@endsection
