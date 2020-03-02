@extends('layouts.app')

@section('content')
  @include('partials.page-header')

  @if (!have_posts())
    <div class="alert alert-warning">
      {{ __('Sorry, no results were found.', 'sage') }}
    </div>
    {!! get_search_form(false) !!}
  @endif

  @component('layouts.article-grid')
    @while (have_posts()) @php the_post(); $image = new ArchiveImage @endphp
      @include('partials.content-image')
    @endwhile
  @endcomponent

  {!! get_the_posts_navigation() !!}
@endsection
