@extends('layouts.app')

@section('content')
	@include('partials.page-header')
	@php $news = FrontPage::get_in_media(); @endphp
	@component('layouts.article-grid')
		@php $count = 0 @endphp
		@while ($news->have_posts()) @php $news->the_post(); $post = new ArchivePost @endphp
			@if(empty($count))
				@include('partials.grid-hero')
			@else
				@include('partials.content-news')
			@endif
			@php $count++ @endphp
		@endwhile
	@endcomponent
@endsection
