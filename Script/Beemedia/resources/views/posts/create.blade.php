@extends('layouts.main')

@section('content')
<!--================================================== create_page ============================================== -->

<div class="container">
  <div id="all-output">
    <!--=================================== Category Cover Image ============================================== -->
    <!-- Category Cover Image -->
    <div id="category-cover-image">
      <!--=================================== Category Cover Image ============================================== -->
      <div class="image-in"><img src="{{ Voyager::image(setting('site.background-Home')) }}" width="100%"></div>
      <!--=================================== Category Cover Title ============================================== -->
      <h1 class="title"><i class="fa fa-youtube-play"></i>{{ setting('site.background-Home-Title') }}</h1>
      <ul class="category-info">
        <!--=================================== Category Cover link ============================================== -->
        <li class="subscribe"><a href="{{ setting('site.background-Home-link') }}">Subscribe</a></li>
      </ul>
    </div>
    <!--=================================== Category Cover Image ============================================== -->
    <!-- // Category Cover Image -->
    <!-- // history-output -->
    <div>
      <div id="history">
        <div class="filter">
          <div class="row">
            <div class="col-md-12">
              <ul class="nav nav-tabs">
                <!--=================================== TAB Image ============================================== -->
                <li class="active"><a data-toggle="tab" href="#images">image</a></li>
                <!--=================================== TAB video ============================================== -->
                <li><a data-toggle="tab" href="#video">video</a></li>
              </ul>
            </div><!-- // col-md-8 -->
          </div><!-- // row -->
        </div><!-- // filter -->
        <div class="tab-content">
          <div id="images" class="tab-pane fade in active">
            <div id="all-output" class="upload">
              <div id="upload">
                <div class="row">
                  <!-- upload -->
                  <div class="col-md-12">
                    <h1 class="page-title"><span>Upload</span> IMAGES</h1>
                    <!--=================================== Form Upload IMAGES ============================================== -->
                    {{ Form::open(['route' => ['posts.store'],'files' => 'true', 'method' => 'POST']) }}
                    {{ csrf_field() }}
                    <div class="row">
                      <div class="col-md-6">
                        <label>Post Title</label>
                        <!--================ Post Title ===================================== -->
                        <input type="text" class="form-control" placeholder="Post Title" name="title" required>
                      </div>
                      <div class="col-md-6">
                        <label>Post Category</label>
                        <select class="form-control" name="category_id" required>
                          <!--================ Post TO GET category_id ===================================== -->
                          @foreach ($Categores as $Category)
                          <option value="{{ $Category->id }}" name="category_id">{{ $Category->name }}</option>
                          @endforeach
                        </select>
                      </div>
                      <div class="col-md-12">
                        <label>Post Body</label>
                        <!--================ Post TO GET Body ===================================== -->
                        <textarea class="form-control" rows="4" placeholder="Content Post Body" name="body" required></textarea>
                      </div>
                      <div class="col-md-6">
                        <label>Post Featured Image</label>
                        <!--================ Post TO GET Image ===================================== -->
                        <input id="featured_image" type="file" class="file" name="image" required>
                      </div>
                      <div class="col-md-12">
                        <button type="submit" id="contact_submit" class="btn btn-dm">Save</button>
                      </div>
                    </div>
                    {{ Form::close() }}
                    <!--=================================== Form Upload IMAGES ============================================== -->
                  </div><!-- // col-md-8 -->

                 

                  <!-- // upload -->
                </div><!-- // row -->
              </div><!-- // upload -->
            </div>

          </div><!-- // watch-history -->
          <!--=================================== TAB video ============================================== -->
          <div id="video" class="tab-pane fade">
           <div id="all-output" class="upload">
            <div id="upload">
              <div class="row">
                <!-- upload -->
                <div class="col-md-12">
                  <h1 class="page-title"><span>Upload</span> Video</h1>
                  <!--=================================== Form Upload Video ============================================== -->
                  {{ Form::open(['route' => ['posts.store'],'files' => 'true', 'method' => 'POST']) }}
                  {{ csrf_field() }}
                  <div class="row">
                    <div class="col-md-6">
                      <label>Post Title</label>
                      <!--=================================== TAB video ============================================== -->
                      <input type="text" class="form-control" placeholder="Post Title" name="title">
                    </div>
                    <div class="col-md-6">
                      <label>Post Category</label>
                      <select class="form-control" name="category_id">
                        <!--================ Post TO GET category_id ===================================== -->
                        @foreach ($Categores as $Category)
                        <option value="{{ $Category->id }}" name="category_id">{{ $Category->name }}</option>
                        @endforeach
                      </select>

                    </div>
                    <div class="col-md-12">
                      <label>Post Body</label>
                      <!--================ Post TO GET body ===================================== -->
                      <textarea class="form-control" rows="4" placeholder="Content Post Body" name="body"></textarea>
                    </div>
                    <div class="col-md-12">
                      <label>Post video Link (URL CODE) (like : https://www.youtube.com/embed/050505)</label>
                      <!--================ Post TO video Link ===================================== -->
                      <input type="text" class="form-control" placeholder="Post video Link" name="vedio">
                    </div>
                    <div class="col-md-12">
                      <button type="submit" id="contact_submit" class="btn btn-dm">Save</button>
                    </div>
                  </div>
                  {{ Form::close() }}
                  <!--=================================== Form Upload Video ============================================== -->
                </div><!-- // col-md-8 -->

              
              <!-- // upload -->
            </div><!-- // row -->
          </div><!-- // upload -->
        </div>
      </div>
    </div><!-- // tab-content -->
  </div><!-- // history -->
</div><!-- // history-output -->
<!--================================================== create_page ============================================== -->
@endsection
