@extends('dashboard.layouts.main')


@section('container')
        <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
            <h1 class="h2">Karyamu</h1>
        </div>

        <div class="col-lg-8">
              @if ( session()->has('success'))
                   <div class="alert alert-success alert-dismissible fade show" role="alert">
                        {{ session('success') }}
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                    </div>
                  
              @endif

              @if ( session()->has('danger'))
                   <div class="alert alert-danger alert-dismissible fade show" role="alert">
                        {{ session('danger') }}
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                    </div>
                  
              @endif

        </div>


        <div class="table-responsive col-lg-8">
            <a href="/dashboard/posts/create" class="btn btn-primary mb-3"> Upload Tulisanmu</a>
            <table class="table table-striped table-sm">
              <thead>
                <tr>
                  <th scope="col">#</th>
                  <th scope="col">Judul</th>
                  <th scope="col">Kategori</th>
                  <th scope="col">Aksi</th>
                </tr>
              </thead>
              <tbody>

                @foreach ($posts as $post)
                
                    <tr>
                    <td>{{ $loop->iteration }}</td>
                    <td>{{ $post->title }}</td>
                    <td>{{ $post->category->name }}</td>
                    <td>
                        <a href="/dashboard/posts/{{ $post->slug }}" class="badge bg-info"><span data-feather="eye"></span></a>
                        <a href="/dashboard/posts/{{ $post->slug }}/edit" class="badge bg-warning"><span data-feather="edit"></span></a>

                        <form action="/dashboard/posts/{{ $post->slug }}" method="post" class="d-inline">
                          @csrf
                          @method('delete')

                            <button class="badge bg-danger border-0" onclick="return confirm('Are you sure?')"> <span data-feather="x-circle"></span></button>

                        </form>
                        
                    </td>
                    
                    </tr>
                @endforeach

              </tbody>
            </table>
        </div>
    
@endsection