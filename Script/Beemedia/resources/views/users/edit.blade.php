@extends('layouts.main')

@section('content')
<div class="container">
  <div id="all-output">
    <!-- =================================================== HOME Cover Image ================================= -->
    <div id="category-cover-image">
      <!-- =================================================== HOME Cover Image ================================= -->
      <div class="image-in"><img src="{{ Voyager::image(setting('site.background-Home')) }}" width="100%"></div>
      <!-- =================================================== HOME Cover Title ================================= -->
      <h1 class="title"><i class="fa fa-youtube-play"></i>{{ setting('site.background-Home-Title') }}</h1>
      <ul class="category-info">
        <!-- =================================================== HOME Cover link ================================= -->
        <li class="subscribe"><a href="{{ setting('site.background-Home-link') }}">Subscribe</a></li>
      </ul>
    </div>
    <!-- =================================================== HOME Cover Image ================================= -->
    <div id="category">
      <div class="row">
        <div class="col-md-12">
          <div class="row">
            <!-- Chanels Item -->
            <div class="col-md-12">
              <div class="chanel-item">
                <div class="chanel-thumb">
                  <!-- =================================================== User avatar ================================= -->
                  <a href="{{ url('users') }}/{{ $User->name }}">
                    <img src="{!! asset(Voyager::image( $User->avatar )) !!}" alt="{{ $User->name }}">
                  </a>
                  <!-- =================================================== User avatar ================================= -->
                </div>
                <div class="chanel-info">
                  <!-- =================================================== User name ================================= -->
                  <a class="title" href="{{ url('users') }}/{{ $User->name }}">{{ $User->name }}</a>
                  <!-- =================================================== User created_at ============================ -->
                  <span class="subscribers">Member since : {{ date('M j, Y', strtotime($User->created_at)) }} 
                   <i class="fa fa-star"></i></span><br>
                   <!-- =================================================== User Points ================================= -->
                   <span class="subscribers">Points : {{ COUNT($User->Points)  }} 
                     <i class="fa fa-star"></i></span><br>
                   </div>
                 </div>
               </div>
               <!-- // Chanels Item -->
             </div><!-- // row -->
           </div>
           <div id="all-output" class="col-sm-12 upload">
            <div id="upload">
              <div class="row">
                <!-- upload -->
                <div class="col-md-12">
                  <h1 class="page-title"><span>Edit Your Profile</span></h1>
                  <!-- =================================================== Form User EDIT ================================= -->
                  {{ Form::open(['url'=>"users/$User->name",'files' => 'true', 'method' => 'PUT']) }}
                  @csrf
                  <div class="row">
                    <div class="col-md-6">
                      <label>Username</label>
                      <input type="text" class="form-control" name="name" placeholder="Username" value="{{ $User->name }}">
                    </div>
                    <div class="col-md-6">
                      <label>Email Address:</label>
                      <input type="Email" class="form-control" name="email" placeholder="Email Address :" value="{{ $User->email }}">
                    </div>
                    <div class="col-md-6">
                      <label> Password (leave blank to keep the original password) </label>
                      <input type="text" class="form-control" name="password" placeholder="Password">
                      {{ Form::hidden('password', $User->password) }}
                      {{ Form::hidden('remember_token', $User->remember_token) }}
                    </div>
                    <div class="col-md-6">
                      <label>Update your avatar</label>
                      <input id="featured_image" type="file" name="avatar" class="file">
                    </div>
                    <div class="col-sm-12">
                      <button type="submit" id="contact_submit" class="btn btn-dm">Save</button>
                    </div>
                  </div>
                  {{ Form::close() }}
                  <!-- =================================================== Form User EDIT ================================= -->
                </div><!-- // col-md-8 -->
              
                <!-- // col-md-8 -->
                <!-- // upload -->
              </div><!-- // row -->
            </div><!-- // upload -->
          </div>
        </div><!-- // row -->
      </div>
    </div>
  </div>
  <!-- ===================================================  User EDIT ================================= -->
  @endsection
