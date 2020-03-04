@extends('layouts.app')

@section('content')
    @include('partials.page-header')
    @include('partials.content-'.get_post_type())
@endsection
