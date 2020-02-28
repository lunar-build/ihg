@extends('layouts.app')

@section('content')
	@include('partials.page-header')
	@php $news = FrontPage::get_news(); @endphp
	@include('partials.page-header')
	@component('layouts.article-grid')
		@while ($news->have_posts()) @php $news->the_post(); $count = 0; $post = new Archive @endphp
			@if(empty($count))
				@include('partials.grid-hero')
			@else
				@include('partials.content-news')
			@endif
			@php $count++ @endphp
		@endwhile
	@endcomponent
@endsection
