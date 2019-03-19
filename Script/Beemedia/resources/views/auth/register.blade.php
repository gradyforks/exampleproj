@extends('layouts.main')

@section('content')
<!--================================================== Register_in_page ==============================================-->
<div id="log-in" class="site-form log-in-form">

    <div id="log-in-head">
        <h1>{{ __('Register') }}</h1>
        <!--================================================== logo SITE ==============================================-->
        <div id="logo"><a href="{{ url('/') }}"><img src="{{ Voyager::image(setting('site.logo')) }}" alt="logo"></a></div>
    </div>

    <div class="form-output">
        <!--================================================== FORM  Register_in_page ==============================================-->
        <form method="POST" action="{{ route('register') }}" aria-label="{{ __('Register') }}">
           @csrf

           <div class="form-group label-floating">
            <label class="control-label">{{ __('Name') }}</label>
            <!--=============================== name FORM  Register_in_page ====================================-->
            <input id="name" type="text" class="form-control{{ $errors->has('name') ? ' is-invalid' : '' }}" name="name" 
            value="{{ old('name') }}" required autofocus placeholder="Name">
            @if ($errors->has('name'))
            <span class="invalid-feedback" role="alert">
                <strong>{{ $errors->first('name') }}</strong>
            </span>
            @endif
        </div>

        <div class="form-group label-floating">
            <label class="control-label">{{ __('E-Mail Address') }}</label>
            <!--=============================== email FORM  Register_in_page ====================================-->
            <input id="email" type="email" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" 
            value="{{ old('email') }}" required placeholder="E-Mail Address">
            @if ($errors->has('email'))
            <span class="invalid-feedback" role="alert">
                <strong>{{ $errors->first('email') }}</strong>
            </span>
            @endif
        </div>
        <div class="form-group label-floating">
            <label class="control-label">{{ __('Password') }}</label>
            <!--=============================== Password FORM  Register_in_page ====================================-->
            <input id="password" type="password" class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" name="password" required placeholder="Password">
            @if ($errors->has('password'))
            <span class="invalid-feedback" role="alert">
                <strong>{{ $errors->first('password') }}</strong>
            </span>
            @endif
        </div>

        <div class="form-group label-floating">
            <label class="control-label">{{ __('Confirm Password') }}</label>
            <!--========================= Confirm Password FORM  Register_in_page ==========================-->
            <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required 
            placeholder="Confirm Password">
        </div>

        <!--========================= submit FORM  Register_in_page ==========================-->
        <button type="submit" class="btn btn-lg btn-primary full-width">
           {{ __('Register') }}
       </button>



       <div class="or"></div>
       <!--========================= route('login') FORM  Register_in_page ==========================-->
       <p>you have an account? <a href="{{ route('login') }}">{{ __('Login') }}</a> </p>
   </form>
   <!--================================================== FORM  Register_in_page ==============================================-->
</div>
</div>
<!--================================================== Register_in_page ==============================================-->
@endsection
