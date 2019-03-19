@extends('layouts.main')
@section('content')
<div class="site-output">
  <!-- // Blog-output -->
  <div id="all-output" class="col-md-12 ">
    <div class="row">
      <!-- ========================== CONTENT : START ============================================ -->
      <div id="all-output" class="col-md-12 error-page text-center">
       <div class="row">

        <div class="col-md-6">
         <h1 class="error-no">404</h1>
       </div><!-- // col-md-4 -->
       <div class="col-md-4">
         <p class="error-text">
          There seems to be a line
        </p>
        <div class="search-form">
          <!-- ==================   start Form search =======================================================  -->             
          {!! Form::open(['method'=>'GET','url'=>'search','role'=>'search','id'=>'search-3']) !!}
          {{ csrf_field() }}
          
          <input type="search" name="search"  placeholder="Search..." autocomplete="off">
          <input type="submit"  />
          
          {!! Form::close() !!}
          <!-- ==================   End Form search =========================================================  -->

        </div>
      </div><!-- // col-md-4 -->


    </div><!-- // row -->
  </div>

</div>
</div>
</div>
<!-- ========================== CONTENT : END ============================================== -->
@endsection
