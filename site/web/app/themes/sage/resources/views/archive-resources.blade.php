@extends('layouts.app')

@section('content')
  @include('partials.page-header')

  @if (!have_posts())
    <div class="alert alert-warning">
      {{ __('Sorry, no results were found.', 'sage') }}
    </div>
    {!! get_search_form(false) !!}
  @endif

  @while (have_posts()) @php the_post(); $resource = new ArchiveResource @endphp
    {{ $resource->title() }}
    {{ $resource->description() }}
    {{ $resource->get_file_path() }}
    @php echo App::create_responsive_image($resource->get_thumbnail()) @endphp
  @endwhile

  {!! get_the_posts_navigation() !!}
@endsection
