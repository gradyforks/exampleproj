@extends('layouts.main')

@section('content')
<!--================ EMAIL PAGE  ===================================== -->
    <div id="log-in" class="site-form log-in-form">
    
      <div id="log-in-head">
          <h1>{{ __('Reset Password') }}</h1>
          <!--================================================== logo SITE ==============================================-->
          <div id="logo"><a href="{{ url('/') }}"><img src="{{ Voyager::image(setting('site.logo')) }}" alt=""></a></div>
      </div>
      
      <div class="form-output">
           @if (session('status'))
                      <div class="alert alert-success" role="alert">
                          {{ session('status') }}
                      </div>
           @endif
        <!--================================================== FORM EMAIL SITE ==============================================-->
         <form method="POST" action="{{ route('password.email') }}" aria-label="{{ __('Reset Password') }}">
         @csrf
              <div class="form-group label-floating">
                  <label class="control-label">{{ __('E-Mail Address') }}</label>
                  <input id="email" type="email" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" value="{{ old('email') }}" required placeholder="E-Mail Address">
                  @if ($errors->has('email'))
                      <span class="invalid-feedback" role="alert">
                          <strong>{{ $errors->first('email') }}</strong>
                      </span>
                  @endif
              </div>
            <button type="submit" class="btn btn-lg btn-primary full-width">
                                  {{ __('Send Password Reset Link') }}
                              </button>
          </form>
          <!--================================================== FORM EMAIL SITE ==============================================-->
      </div>
    </div>
<!--================ EMAIL PAGE  ===================================== -->
@endsection
