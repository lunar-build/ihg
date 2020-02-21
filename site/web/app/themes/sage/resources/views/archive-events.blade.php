@extends('layouts.app')

@section('content')
  @include('partials.page-header')

  @if (!have_posts())
    <div class="alert alert-warning">
      {{ __('Sorry, no results were found.', 'sage') }}
    </div>
    {!! get_search_form(false) !!}
  @endif

  @while (have_posts()) @php the_post(); $event = new ArchiveEvent @endphp
    {{ $event->title() }}
    {{ $event->description() }}
    {{ $event->date() }}
    {{ $event->link() }}
  @endwhile

  {!! get_the_posts_navigation() !!}
@endsection
