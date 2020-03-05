@extends('layouts.app')
@section('content')
	@include('partials.page-header')
	@component('layouts.article-grid')
        @php $count = 0 @endphp
		@php $media = FrontPage::get_in_media(); @endphp
		@while ($media->have_posts()) @php $media->the_post(); $post = new ArchivePost @endphp
			@if(empty($count))
				@include('partials.grid-hero')
			@else
				@include('partials.content-news')
			@endif
			@php $count++ @endphp
        @endwhile
        {{ App\pagination($media->max_num_pages) }}
	@endcomponent
@endsection
