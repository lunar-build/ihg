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
    {{ $image->title() }}
    {{ $image->description() }}
    @php echo App::create_responsive_image($image->get_image()) @endphp
  @endwhile
  {!! get_the_posts_navigation() !!}
@endsection
