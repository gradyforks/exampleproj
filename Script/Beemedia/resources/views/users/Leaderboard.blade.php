@extends('layouts.main')
@section('content')
<!-- ========================================== ALL Users Leaderboard PAGE ============================ -->
<div class="container">
    <div id="all-output" >
        <!-- ========================================== ALL Users Leaderboard background ============================ -->
        <div id="category-cover-image">
          <div class="image-in">
            <img src="{{ Voyager::image(setting('page-leaderboard.background-Leaderboard')) }}" 
            alt="{{ setting('page-leaderboard.background-Leaderboard-Title') }}" width="100%">
        </div>
        <h1 class="title"><i class="fa fa-trophy"></i>{{ setting('page-leaderboard.background-Leaderboard-Title') }}</h1>
        <ul class="category-info">
            <li class="subscribe"><a href="{{ setting('page-leaderboard.background-Leaderboard-Link') }}">Subscribe</a></li>
        </ul>

    </div>
     <div class="col-sm-12 mb-30">
        <div class="row">
        <a href="{{ setting('ads.ads-Leaderboard-one-link') }}"><img src="{{ Voyager::image(setting('ads.ads-Leaderboard-one-IMAGE')) }}" alt="" width="100%""></a>
    </div>
    </div>
    <!-- ========================================== ALL Users Leaderboard background ============================ -->
    <div id="category">
      <div class="row">
          <div class="col-md-12">
            <div class="row">
                 <!-- ========================================== ALL Users Leaderboard background ============================ -->
                @foreach($Users as $User)
                <!-- Chanels Item -->
                <div class="col-md-6">
                    <div class="chanel-item">
                        <div class="chanel-thumb">
                            <a href="{{ url('users') }}/{{ $User->name }}">
                                <img src="{!! asset(Voyager::image( $User->avatar )) !!}" alt="{{ $User->name }}">
                            </a>
                        </div>
                        <div class="chanel-info">
                            <a class="title" href="{{ url('users') }}/{{ $User->name }}">{{ $User->name }}</a>
                            <span class="subscribers">{{ COUNT($User->Points)  }} <i class="fa fa-star"></i></span>
                        </div>
                        <a href="{{ url('users') }}/{{ $User->name }}" class="subscribe">Profile</a>
                    </div>
                </div>
                <!-- // Chanels Item -->
                @endforeach 
                 <!-- ========================================== ALL Users Leaderboard background ============================ -->
            </div><!-- // row -->
            <!-- Loading More Videos -->
            <div class="col-sm-12 text-center" >
             <!-- ========================================== ALL Users Leaderboard PAGINATE ============================ -->
             {{ $Users->links() }}
         </div>
         <!-- // Loading More Videos -->
     </div>
     <div class="col-sm-12 mb-30">
        <div class="row">
        <a href="{{ setting('ads.ads-Leaderboard-two-link') }}"><img src="{{ Voyager::image(setting('ads.ads-Leaderboard-two-IMAGE')) }}" alt="" width="100%""></a>
    </div>
    </div>
 </div><!-- // row -->
</div>
<!-- // category -->

</div>
</div>
<!-- ========================================== ALL Users Leaderboard PAGE ============================ -->
@endsection
