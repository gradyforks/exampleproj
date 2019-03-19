@extends('layouts.main')

@section('content')
<!-- ========================================== ALL Users Leaderboard background ============================ -->
<div class="container">
  <div id="all-output">
   <!-- ========================================== HOME background ============================ -->
   <div id="category-cover-image">
    <div class="image-in"><img src="{{ Voyager::image(setting('site.background-Home')) }}" width="100%"></div>
    <h1 class="title"><i class="fa fa-youtube-play"></i>{{ setting('site.background-Home-Title') }}</h1>
    <ul class="category-info">
      <li class="subscribe"><a href="{{ setting('site.background-Home-link') }}">Subscribe</a></li>
    </ul>
  </div>
  <!-- ========================================== HOME background ============================ -->
  <!-- category -->
  <div id="category">
    <div class="row">
      <div class="col-md-12">
        <div class="row">
          <!-- Chanels Item -->
          <div class="col-md-12">
            <div class="chanel-item">
              <div class="chanel-thumb" style="width: 100px;">
                <!-- ========================================== User  avatar ============================ -->
                <a href="{{ url('users') }}/{{ $User->name }}">
                  <img src="{!! asset(Voyager::image( $User->avatar )) !!}" alt="{{ $User->name }}" >
                </a>
              </div>
              <div class="chanel-info">
                <!-- ==========================================  User name ============================ -->
                <a class="title" href="{{ url('users') }}/{{ $User->name }}">{{ $User->name }}</a>
                <!-- ========================================== HOME background ============================ -->
                <span class="subscribers">Member since : {{ date('M j, Y', strtotime($User->created_at)) }} 
                 <i class="fa fa-star"></i></span><br>
                 <!-- ========================================== User Points ============================ -->
                 <span class="subscribers">Points : {{ COUNT($User->Points)  }} 
                  <i class="fa fa-star"></i></span><br>
                </div>
              </div>
            </div>
            <!-- // Chanels Item -->
          </div><!-- // row -->
        </div>
      </div><!-- // row -->
    </div>
    <div id="all-output" >
     <div id="history">
      <div class="filter">
        <div class="row">
          <div class="col-md-12">
            <ul class="nav nav-tabs">
              <li class="active"><a data-toggle="tab" href="#MyUploads" aria-expanded="true"> My Uploads </a></li>
              <li class=""><a data-toggle="tab" href="#MyLikes" aria-expanded="false">  My Likes </a></li>
            </ul>
          </div><!-- // col-md-8 -->
        </div><!-- // row -->
      </div><!-- // filter -->

      <div class="tab-content">

        <div id="MyUploads" class="tab-pane fade active in">
          <div class="row">
           @if(COUNT($Posts) == 0)
           <div class="col-sm-12 ">
             <div class="alert alert-success text-center mt-30" role="alert">
              {{ $User->name }} Have no Post yet !
            </div>
          </div>
          @elseif(COUNT($Posts) != 0)
          <!-- ========================================== Posts User  ============================ -->
          @foreach ($Posts as $Post)
          <!-- video-item -->
          <div class="col-sm-4 col-xs-12">
            <div class="video-item">
              <div class="thumb">
                <div class="hover-efect"></div>
                <small class="time">{{ $Post->category->name }}</small>
                <!-- ========================================== Posts User image ============================ -->
                @if($Post->image != null)
                <a href="{{ url('posts') }}/{{ $Post->slug }}"><img src="{{ Voyager::image($Post->image) }}"></a>
                @else($Post->image == null)
                <div class="video-code">
                  <!-- ========================================== Posts User  vedio  ============================ -->
                  <iframe width="100%" height="245" src="{{ $Post->vedio }}" frameborder="0" allowfullscreen>
                  </iframe>
                </div>
                <!-- // video-code -->
                @endif
                <!-- ========================================== Posts User  ============================ -->
              </div>
              <div class="video-info remove-button">
                <a href="{{ url('posts') }}/{{ $Post->slug }}" class="title">{!! substr($Post->title, 0, 90) !!}</a>
                <a class="channel-name" href="{{ url('profile') }}/{{ $Post->user->name }}">{{ $Post->user->name }}<span>
                  <i class="fa fa-check-circle"></i></span></a>
                  
                  <span class="love"><i class="fa fa-heart-o"></i> {{ COUNT($Post->likes)  }} Like This </span>
                  
                  <span class="date"><i class="fa fa-clock-o"></i>{{ date('M j, Y', strtotime($Post->created_at)) }}</span>
                  @if($User->id == Auth::user()->id)

                  <!--  ==============================================   Like destroy FORM ============== -->
                  {{ Form::open(['method' => 'DELETE', 'route' => ['posts.destroy', $Post->id]]) }} 
                  {{ csrf_field() }}       
                  <span class="date"> 
                    <button type="submit">
                      <i class="fa fa-remove"></i> DELETE
                    </button>
                  </span>
                  {{ Form::close() }}
                  <!--  ==============================================   Like destroy FORM =============== -->
                  @endif
                </div>
              </div>
            </div>
            <!-- // video-item -->
            @endforeach
            <!-- ========================================== Posts User  ============================ -->
            <div class="col-sm-12 text-center" >
              <!-- ========================================== Posts User PAGINATE  ============================ -->
              {{ $Posts->links() }}
            </div>
            @endif
          </div>

        </div><!-- // watch-history -->

        <div id="MyLikes" class="tab-pane fade in">
         <!-- ========================================== Posts User My Likes ============================ -->
         <div class="row">
          @if(COUNT($Likes) == 0)
          <div class="col-sm-12 ">
            <div class="alert alert-warning text-center mt-30" role="alert">
             {{ $User->name }} Have no Like yet !
           </div>
         </div>
         @elseif(COUNT($Likes) != 0)
         @foreach ($Likes as $Like)
         <!-- video-item -->
         <div class="col-sm-4 col-xs-12">
          <div class="video-item">
            <div class="thumb">
              <div class="hover-efect"></div>
              
              <!-- ========================================== Posts User IMAGE ============================ -->
              @if($Like->post->image != null)
              <a href="{{ url('posts') }}/{{ $Like->post->slug }}">
                <img src="{{ Voyager::image($Like->post->image) }}">
              </a>
              <!-- ========================================== Posts User IMAGE ============================ -->
              @else($Like->post->image == null)
              <div class="video-code">
                <iframe width="100%" height="215" src="{{$Like->post->vedio }}" frameborder="0" allowfullscreen>
                </iframe>
              </div>
              @endif
            </div>
            <div class="video-info remove-button">
              <!-- ========================================== Posts User IMAGE ============================ -->
              <a href="{{ url('posts') }}/{{ $Like->post->slug }}" class="title">{!! substr($Like->post->title, 0, 90) !!}</a>
              <span class="love"><i class="fa fa-heart-o"></i> {{ COUNT($Like->post->likes)  }} Like This </span>
              <span class="date"><i class="fa fa-clock-o"></i>{{ date('M j, Y', strtotime($Like->post->created_at)) }}</span>
              @if($User->id == Auth::user()->id)
              <!-- ========================================== Posts User IMAGE ============================ -->
              <!--  ==============================================   Like destroy FORM ============== -->
              {{ Form::open(['method' => 'DELETE', 'route' => ['likes.destroy', $Like->id]]) }} 
              {{ csrf_field() }}       
              <span class="date"> 
                <button type="submit">
                  <i class="fa fa-remove"></i> DELETE
                </button>
              </span>
              {{ Form::close() }}
              <!--  ==============================================   Like destroy FORM =============== -->
              @endif
            </div>
            
          </div>
        </div>
        <!-- ========================================== Posts User My Likes ============================ -->
        @endforeach
        @endif
      </div>
    </div>
  </div><!-- // tab-content -->

</div>
</div>
</div>
</div>
@endsection
