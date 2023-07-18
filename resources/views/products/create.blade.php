@extends('layout.master')
@section('title', 'Create Product')
@section('content')
    <div class="container col-md-8 col-md-offset-2 pt-5">
        <div class="well">
            {{-- ************Form Start********* --}}
            <form method="post" enctype="multipart/form-data">
                @foreach ($errors->all() as $error)
                    <p class="alert alert-danger">{{ $error }}</p>
                @endforeach
                @if (session('status'))
                    <p class="alert alert-success">{{ session('status') }}</p>
                @endif
                <legend>Insert A New Product</legend>
                {{ csrf_field() }}
                <div class="form-group">
                    <label for="title">Title</label>
                    <input type="text" class="form-control" name="title" id="title" placeholder="Title">
                </div>
                <div class="form-group">
                    <label for="price">Price</label>
                    <input type="number" class="form-control" id="price" name="price" placeholder="Price">
                </div>
                <div class="form-group">
                    <label for="description">Description</label>
                    <textarea class="form-control" name="description" rows="3"></textarea>
                </div>
                <div class="form-group">
                    <label for="exampleInputFile">File input</label>
                    <input type="file" name="file[]" id="exampleInputFile" multiple>
                </div>
                <button type="submit" class="btn btn-default">Submit</button>
            </form>
            {{-- ************Form End********* --}}
        </div>
    </div>
@endsection
