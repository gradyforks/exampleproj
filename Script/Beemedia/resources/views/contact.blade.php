@extends('layouts.main')

@section('content')
<!-- ========================================== CONTACT PAGE ============================ -->
<div class="container">
    <div id="all-output">
        <!-- ========================================== CONTACT PAGE background ============================ -->
        <div id="category-cover-image">
            <div class="image-in">
                <img src="{{ Voyager::image(setting('page-contact.background-Contact')) }}" alt="" width="100%">
            </div>
            <h1 class="title"><i class="fa fa-map"></i>{{ setting('page-contact.background-Contact-Title') }}</h1>
            <ul class="category-info">
                <li class="subscribe"><a href="{{ setting('page-contact.background-Contact-Link') }}">Subscribe</a></li>
            </ul>
        </div>
        <!-- ========================================== CONTACT PAGE background ============================ -->
        <div id="category">
            <div class="row">
                <div class="col-md-4">
                    <!-- ========================================== CONTACT PAGE Advertising ============================ -->
                    <div class="advertising-block">
                        <h1 class="title">Advertising</h1>
                        <div class="advertising-code">
                            <!-- ========================================== CONTACT PAGE Advertising ============================ -->
                            <a href="{{ setting('page-contact.Advertising-Contact-link') }}">
                                <!-- ========================================== CONTACT PAGE Advertising ============================ -->
                                <img src="{{ Voyager::image(setting('page-contact.Advertising-Contact-image')) }}" alt="">
                            </a>
                        </div>
                    </div>
                    <!-- ========================================== CONTACT PAGE Advertising ============================ -->
                    <!-- ========================================== social-link ============================ -->
                    <div class="share-in">
                        <h1 class="title">Find it Fast</h1>
                        <ul class="social-link">
                            <li class="facebook"><a href="{{ setting('social-link.Facebook') }}"><i class="fa fa-facebook"></i>Facebook</a></li>
                            <li class="twitter"><a href="{{ setting('social-link.Twitter') }}"><i class="fa fa-twitter"></i>Twitter</a></li>
                            <li class="google-plus"><a href="{{ setting('social-link.Google-plus') }}"><i class="fa fa-google-plus"></i>Google-plus</a></li>
                            <li class="vimeo"><a href="{{ setting('social-link.Vimeo') }}"><i class="fa fa-vimeo"></i>Vimeo</a></li>
                        </ul>
                    </div>
                    <!-- ========================================== social-link ============================ -->
                </div><!-- // col-md-2 -->

                <div class="col-md-8">

                    <div class="about-category">
                        <!-- ========================================== site.description ============================ -->
                        <h5>{{ setting('site.description') }}</h5>
                        <!-- ========================================== Contact-body ============================ -->
                        {{ setting('page-contact.Contact-body') }} 
                        <h6>Got Questions ? Call us 24/7!</h6>
                        <!-- ========================================== Email  ============================ -->
                        <h6>Email : {{ setting('page-contact.Email') }}</h6>
                        <!-- ========================================== Phone ============================ -->
                        <h6>Phone : {{ setting('page-contact.Phone') }} </h6>   
                    </div><!-- // about-category -->
                </div>
            </div><!-- // row -->
        </div>
    </div>
</div>
<!-- ========================================== CONTACT PAGE ============================ -->
@endsection      