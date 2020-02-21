@extends('layouts.app')

@section('content')
  @include('partials.page-header')

  @if (!have_posts())
    <div class="alert alert-warning">
      {{ __('Sorry, no results were found.', 'sage') }}
    </div>
    {!! get_search_form(false) !!}
  @endif

  @while (have_posts()) @php the_post(); $image = new ArchiveImage @endphp
    @include('partials.content-image')
  @endwhile
  {!! get_the_posts_navigation() !!}
@endsection
