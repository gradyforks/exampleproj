@extends('layouts.main')

@section('content')
<!--================================================== log_in_page ==============================================-->
<div class="container-full">
 
 <div id="log-in" class="site-form log-in-form" >

    <div id="log-in-head">
        <h1>{{ __('Login') }}</h1>
        <!--================================================== logo SITE ==============================================-->
        <div id="logo"><a href="{{ url('/') }}"><img src="{{ Voyager::image(setting('site.logo')) }}" alt="logo"></a></div>
    </div>

    <div class="form-output">
        <!--================================================== FORM LOG IN ==============================================-->
        <form method="POST" action="{{ route('login') }}" aria-label="{{ __('Login') }}">
            @csrf
            <div class="form-group label-floating">
                <label class="control-label">{{ __('E-Mail Address') }}</label>
                <!--================================================== email FORM LOG IN ==============================================-->
                <input id="email" type="email" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" 
                value="{{ old('email') }}" required autofocus placeholder="E-Mail Address">
                @if ($errors->has('email'))
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $errors->first('email') }}</strong>
                </span>
                @endif
            </div>
            <div class="form-group label-floating">
                <label class="control-label">{{ __('Password') }}</label>
                <!--================================================== Password FORM LOG IN ==============================================-->
                <input id="password" type="password" class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" name="password" required placeholder="Password">
                @if ($errors->has('password'))
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $errors->first('password') }}</strong>
                </span>
                @endif
            </div>

            <div class="remember">
                <div class="checkbox">
                    <label>
                        <!--============================== remember FORM LOG IN ===============================-->
                        <input type="checkbox" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}>
                        {{ __('Remember Me') }}
                    </label>
                </div>
                <a href="{{ route('password.request') }}" class="forgot">{{ __('Forgot Your Password?') }}</a>
            </div>
            <button type="submit" class="btn btn-lg btn-primary full-width">
                {{ __('Login') }}
            </button>


            <div class="or"></div>




            <p>Don't you have an account? <a href="{{ route('register') }}">Register Now!</a> </p>
        </form>
        <!--================================================== FORM LOG IN ==============================================-->
    </div>
</div>
</div>
<!--================================================== log_in_page ==============================================-->

@endsection
