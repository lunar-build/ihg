@extends('layouts.app')

@section('content')
  @include('partials.page-header')
  @component('layouts.article-grid')
    @php $resources = FrontPage::get_resources(-1); @endphp
    @while ($resources->have_posts()) @php $resources->the_post(); $resource = new ArchiveResource; @endphp
      @include('partials.content-resource')
    @endwhile
  @endcomponent
@endsection
