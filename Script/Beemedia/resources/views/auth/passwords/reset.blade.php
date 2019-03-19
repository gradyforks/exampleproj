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
     <!--================================================== FORM EMAIL SITE ==============================================-->
     <form method="POST" action="{{ route('password.request') }}" aria-label="{{ __('Reset Password') }}">
         @csrf

         <input type="hidden" name="token" value="{{ $token }}">

         <div class="form-group label-floating">
            <label class="control-label">{{ __('E-Mail Address') }}</label>
            <!--==================================== E-Mail Address FORM EMAIL SITE ==============================================-->
            <input id="email" type="email" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" value="{{ $email ?? old('email') }}" required autofocus placeholder="E-Mail Address">
            @if ($errors->has('email'))
            <span class="invalid-feedback" role="alert">
                <strong>{{ $errors->first('email') }}</strong>
            </span>
            @endif
        </div>

        <div class="form-group label-floating">
            <label class="control-label">{{ __('Password') }}</label>
            <!--==================================== Password FORM EMAIL SITE ==============================================-->
            <input id="password" type="password" class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" 
            name="password" required>
            @if ($errors->has('password'))
            <span class="invalid-feedback" role="alert">
                <strong>{{ $errors->first('password') }}</strong>
            </span>
            @endif
        </div>

        <div class="form-group label-floating">
            <label class="control-label">{{ __('Confirm Password') }}</label>
            <!--=============================== Confirm Password FORM EMAIL SITE ==============================================-->
            <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required>
        </div>
        
        <button type="submit" class="btn btn-lg btn-primary full-width">
            {{ __('Reset Password') }}
        </button>
        
    </form>
    <!--================================================== FORM EMAIL SITE ==============================================-->
</div>
</div>
<!--================ EMAIL PAGE  ===================================== -->
@endsection

