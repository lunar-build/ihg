@extends('layouts.app')

@section('content')
  @php $in_media = FrontPage::get_in_media(); @endphp
  @component('layouts.article-grid')
    @while ($in_media->have_posts()) @php $in_media->the_post(); $post = new Archive; @endphp
  			@include('partials.content-news')
    @endwhile
  @endcomponent
@endsection
