@extends('layouts.app')

@section('content')
    @include('partials.content-'.get_post_type())
@endsection
