@extends('layout.master')
@section('title', 'Home')
@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                @include('layout.sidebar')
            </div>
            <div class="col-md-9">
                <h1>Content</h1>
                @foreach ($products as $product)
                    {{-- One Product Start --}}
                    <div class="col-sm-6 col-md-4">
                        <div class="thumbnail">
                            <img src="{{ asset('uploads/' . unserialize($product->imgs)[0]) }}" alt="img"
                                style="width:250px;height:250px">
                            <div class="caption">
                                <h3 class="text-center">{{ $product->title }}</h3>
                                <p class="text-center">Price = ${{ $product->price }}</p>
                                <p>{{ substr($product->description, 0, 50) }}</p>
                                <a href="#" class="btn btn-danger" role="button">View Detail</a>
                                <a href="{{ action('App\Http\Controllers\PageController@add', $product->id) }}"
                                    class="btn btn-warning pull-right" role="button">Add To Cart</a>
                            </div>
                        </div>
                    </div>
                    {{-- One Product End --}}
                @endforeach
            </div>
        </div>
    </div>
@endsection
