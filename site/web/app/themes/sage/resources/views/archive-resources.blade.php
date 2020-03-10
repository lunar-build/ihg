@extends('layouts.app')

@section('content')
  @include('partials.page-header')
  @component('layouts.article-grid')
    @while (have_posts()) @php the_post(); $resource = new ArchiveResource @endphp
      @include('partials.content-resource')
    @endwhile
  @endcomponent
@endsection
