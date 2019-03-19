 @extends('layouts.main')

 @section('content')
 <!--================================================== Blog output page ============================================== -->
 <div class="container">
  <!-- // Blog-output -->
    <div class="row">
      <!--  SideBar -->
      <div class="col-md-4">
        <div class="sidebar">
          <!--  Categories widget -->
            <!-- //  Categories widget -->
            <!--  News letter widget -->
            <div class="widget recent-post-widget">

              <h3 class="widget-title">Popular Posts</h3>
              <ul class="recent-post">
               <!-- ======== Foreach Popular Posts ==================================== -->
               @foreach ($PopularPosts as $PopularPost)
               <!-- post -->
               <li>
                <div class="thumb-latest-posts">
                  <div class="image-left">
                    <!-- ======== Foreach Popular Posts slug ==================================== -->
                    <a href="{{ url('posts') }}/{{ $PopularPost->slug }}" class="popular-img">
                      <!-- ======== Foreach Popular Posts IF IMAGE NULL SHOW VIDEO ==================================== -->
                      @if($PopularPost->image != null)    
                      <a href="{{ url('posts') }}/{{ $PopularPost->slug }}">
                        <!-- ======== Foreach Popular Posts SHOW IMAGE ==================================== -->
                        <img src="{!! asset(Voyager::image($PopularPost->image)) !!}">
                      </a>
                      <!-- ======== Foreach Popular Posts IF IMAGE NOT NULL SHOW IMAGE ==================================== -->
                      @else($PopularPost->image == null)
                      <div class="video-code">
                        <!-- ======== Foreach Popular Posts SHOW VIDEO ============================= -->
                        <iframe width="100%" height="100%" src="{{ $PopularPost->vedio }}" frameborder="0" allowfullscreen>
                        </iframe>
                      </div>
                      <!-- // video-code -->
                      @endif
                      <div class="p-overlay"><i class="fa fa-bookmark-o " aria-hidden="true"></i></div>
                    </a>
                  </div>
                  <div class="p-content">
                    <!--================ Foreach Popular Post slug ================================= -->
                    <h3><a href="{{ url('posts') }}/{{ $PopularPost->slug }}">{!! substr($PopularPost->title, 0, 90) !!}</a></h3>
                    <!--================ Foreach category slug ===================================== -->
                    <h6><a href="{{ url('categores') }}/{{ $PopularPost->category->slug }}">{{ $PopularPost->category->name }}</a></h6>
                    <!--================ Foreach created_at ===================================== -->
                    <span class="p-date">{{ date('M j, Y', strtotime($PopularPost->created_at)) }}</span>

                  </div>
                </div>
                <div class="clear"></div>
              </li> <!-- // ======================================== post ================================= -->
              @endforeach
            </ul>
            <div class="clear"></div>
          </div>
          <!-- ============================================ Categories widget ================================= -->
          <div class="widget category-post-no">
            <h3 class="widget-title">Categories</h3>
            <ul>
              <!--================ Foreach category menu ===================================== -->
              @foreach ($Catmenus as $Catmenu)
              <li>
                <a href="{{ url('categores') }}/{{ $Catmenu->slug }}">{{ $Catmenu->name}}</a>
                <span class="post-count pull-right">{{ $Catmenu->id }}</span>
              </li>   
              @endforeach   
              <!--================ Foreach category menu ===================================== -->    
            </ul>
            <div class="clear"></div>
          </div>
          <!-- // ======================================== Categories widget ============================ -->
        </div>
      </div><!-- //col-md-4 -->
      <div class="col-md-8">
        <div id="single-page">
          <div class="thumb">
            <!-- ======== Foreach Popular Posts ==================================== -->
            @if($Post->image != null)   
            <!-- ======== Foreach Popular Posts ==================================== --> 
            <a href="{{ url('posts') }}/{{ $Post->slug }}"><img src="{!! asset(Voyager::image($Post->image)) !!}"></a>
            <!-- ======== Foreach Popular Posts ==================================== -->
            @else($Post->image == null)
            <div class="video-code">
              <!-- ======== Foreach Popular Posts vedio ==================================== -->
              <iframe width="100%" height="615" src="{{ $Post->vedio }}" frameborder="0" allowfullscreen>
              </iframe>
            </div>
            <!-- // ============================ video-code ============================== -->
            @endif
            
          </div>
          <div class="content">
            <!-- // ============================ Post title ============================== -->
            <h1 class="title">{!! substr($Post->title, 0, 290) !!}</h1>
            <div class="video-share">
              <ul class="like">
               <li class="color-deslike">
                <!-- // ============================ FORM Post deslike ============================== --> 
                {{ Form::open(['route' => ['deslikes.store'], 'method' => 'POST']) }}
                {{ csrf_field() }}
                {{ Form::hidden('post_id', $Post->id) }}
                {{ Form::hidden('deslike', 1) }}
                <button type="submit" class="deslike">{{ COUNT($deslikes) }}  <i class="fa fa-thumbs-down"></i></button>
                {{ Form::close() }}
                <!-- // ============================ FORM Post deslike ============================== --> 
              </li>
              <li class="color-like">
                <!-- // ============================ FORM Post like ============================== --> 
                {{ Form::open(['route' => ['likes.store'], 'method' => 'POST']) }}
                {{ csrf_field() }}
                {{ Form::hidden('post_id', $Post->id) }}
                {{ Form::hidden('like', 1) }}
                <button type="submit" class="like">{{ COUNT($likes) }}  <i class="fa fa-thumbs-up"></i></button>
                {{ Form::close() }}
                <!-- // ============================ FORM Post like ============================== --> 
              </li>
            </ul>
            <ul class="social_link">
              <!-- =========================================== I got these share buttons ============================ -->
              <div id="share-buttons">

                <!-- ==================================================== Facebook -->
                <a href="http://www.facebook.com/sharer.php?url={!! asset(Voyager::image($Post->image)) !!}" target="_blank">
                  <img src="{{ asset('assets/img/share/facebook.png') }}" alt="Facebook" />
                </a>

                <!-- ===================================================== Google+ -->
                <a href="https://plus.google.com/share?url={!! asset(Voyager::image($Post->image)) !!}" target="_blank">
                  <img src="{{ asset('assets/img/share/google.png') }}" alt="Google" />
                </a>

                <!-- ======================================================LinkedIn -->
                <a href="http://www.linkedin.com/shareArticle?mini=true&amp;url={{ setting('social-link.share-buttons')}}" 
                target="_blank">
                <img src="{{ asset('assets/img/share/linkedin.png') }}" alt="LinkedIn" />
              </a>

              <!-- =======================================================Pinterest -->
              <a href="javascript:void((function()%7Bvar%20e=document.createElement('script');e.setAttribute('type','text/javascript');e.setAttribute('charset','UTF-8');e.setAttribute('src','http://assets.pinterest.com/js/pinmarklet.js?r='+Math.random()*99999999);document.body.appendChild(e)%7D)());">
                <img src="{{ asset('assets/img/share/pinterest.png') }}" alt="Pinterest" />
              </a>

              <!-- ========================================================Tumblr-->
              <a href="http://www.tumblr.com/share/link?url={!! asset(Voyager::image($Post->image)) !!}&amp;title=Simple Share Buttons" target="_blank">
                <img src="{{ asset('assets/img/share/tumblr.png') }}" alt="Tumblr" />
              </a>

              <!-- ========================================================Twitter -->
              <a href="https://twitter.com/share?url={!! asset(Voyager::image($Post->image)) !!}&amp;text=Simple%20Share%20Buttons&amp;hashtags=simplesharebuttons" target="_blank">
                <img src="{{ asset('assets/img/share/twitter.png') }}" alt="Twitter" />
              </a>
            </div>
            <!-- =========================================== I got these share buttons ============================ -->
          </ul><!-- // Social -->
        </div><!-- // video-share -->
        <!-- =========================================== Post body ============================ -->
        <p>{{ $Post->body }}</p>
        <!-- =========================================== Post body ============================ -->
      </div><!-- // content  -->
    </div><!-- // single-page  -->



    <!-- Chanels Item -->
    <div class="chanel-item">
      <div class="chanel-thumb">
        <!-- =========================================== Post user name ============================ -->
        <a href="{{ url('users') }}/{{ $Post->user->name }}">
          <!-- =========================================== Post user avatar ============================ -->
          <img src="{!! asset(Voyager::image( $Post->user->avatar )) !!}" alt="{{ $Post->user->name }}">
        </a>
      </div>
      <div class="chanel-info">
        <!-- =========================================== Post user name ============================ -->
        <a class="title" href="{{ url('users') }}/{{ $Post->user->name }}">{{ $Post->user->name }}</a>
        
      </div>
      <!-- =========================================== Post user LINK ============================ -->
      <a href="{{ url('users') }}/{{ $Post->user->name }}" class="subscribe">Profile</a>
    </div>
    <!-- // Chanels Item -->


    <!-- ========================================= Comments ================================ -->
    <div id="comments" class="post-comments single-comments">
      @if(COUNT($comments) == 0)
      @elseif(COUNT($comments) != 0)
      <!-- =========================================== Post Comments COUNT ============================ -->
      <h3 class="post-box-title"><span>{{ COUNT($comments) }} </span> Comments</h3>
      @endif
      <ul class="comments-list">
        <!-- =========================================== Post Comments ============================ -->
        @foreach($comments as $comment)
        <li>
          <div class="post_author">
            <div class="img_in">
              <a href="{{ url('users') }}/{{ $comment->user->name }}">
                <img src="{!! asset(Voyager::image( $comment->user->avatar )) !!}" alt="{{ $comment->user->name }}">
              </a>
            </div>
            <a href="{{ url('users') }}/{{ $comment->user->name }}" class="author-name">{{ $comment->user->name }}</a>
            <time datetime="2017-03-24T18:18">{{ date('M j, Y', strtotime($comment->created_at)) }}</time>
          </div>
          <p>{{ $comment->content }}</p>
        </li>
        @endforeach
        <!-- =========================================== Post Comments ============================ -->
      </ul>

      <!-- =========================================== Add Post Comments ============================ -->
      <h3 class="post-box-title">Add Comments</h3>
      @guest
      <div class="alert alert-info" role="alert">
        A simple Comment If You Gest <a href="{{ route('register') }}" class="alert-link">{{ __('Register') }}</a>. Give it a click if you like.
      </div>
      @else
      @endguest
      <!-- =========================================== Add Post Comments ============================ --> 
      <!--   ================== FORM comment store ================================ -->
      {{ Form::open(['route' => ['comments.store'], 'method' => 'POST']) }}
      {{ csrf_field() }}
      {{ Form::hidden('post_id', $Post->id) }}
      <textarea name="content" class="form-control" rows="5" placeholder="Type your Comment here..."></textarea>
      <button type="submit" name="submit" class="btn btn-dm">Comment</button>
      {{ Form::close() }}
    </div>
    <!-- // ================================================ Comments ================================== -->
  </div><!-- // col-md-8 //Blog -->
  <!-- // SideBar -->

</div><!-- // Blog-output -->
</div>
<!--================================================== Blog output page ============================================== -->
@endsection
