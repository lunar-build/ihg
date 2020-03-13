@extends('layouts.app')

@section('content')
  @include('partials.page-header')

  @component('layouts.article-grid')
    @php $images = FrontPage::get_image_gallery(-1); @endphp
    @while ($images->have_posts()) @php $images->the_post(); $image = new ArchiveImage; @endphp
      @include('partials.content-image')
    @endwhile
  @endcomponent
@endsection
