@extends('layouts.app')

@section('content')
    @include('partials.content-single-'.get_post_type())
@endsection
