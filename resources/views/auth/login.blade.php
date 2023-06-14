@extends('layouts.main')

@section('container')
    
<div class="row justify-content-center ">
    <div class="col-lg-5 mt-5">

      @if ( session()->has('success'))
          
       <div class="alert alert-success alert-dismissible fade show" role="alert">
        {{ session('success') }}
           <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
          
      @endif

      @if ( session()->has('loginError'))
          
          <div class="alert alert-danger alert-dismissible fade show" role="alert">
            {{ session('loginError') }}
              <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
          </div>
          
      @endif
      

        <main class="form-signin">
            <h1 class="h3 mb-3 fw-normal text-center">Login</h1>
            <form action="\login" method="post">
              @csrf
              
              
              <div class="form-floating">
                <input type="email" name="email" class="form-control @error('email') is-invalid @enderror" id="emial" placeholder="Email" autofocus  value="{{ old('email') }}">
                <label for="emial">Alamat Email</label>

                @error('email')
                <div class="invalid-feedback">
                  {{ $message }}
                </div>
                @enderror

              </div>
              <div class="form-floating">
                <input type="password" name="password" class="form-control" id="password" placeholder="Password">
                <label for="password">Password</label>
              </div>
          
              <button class="w-100 btn btn-lg btn-primary mt-4" type="submit">Login</button>
            </form>

            <small class="d-block text-center mt-3">Belum punya akun? <a href="/register">Daftar Sekarang!</a></small>
        </main>

    </div>
</div>
 

  

@endsection