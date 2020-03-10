@extends('layouts.app')

@section('content')
  @include('partials.page-header')

  @component('layouts.article-grid')
    @while (have_posts()) @php the_post(); $image = new ArchiveImage @endphp
      @include('partials.content-image')
    @endwhile
  @endcomponent

@endsection
