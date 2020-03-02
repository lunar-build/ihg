@extends('layouts.app')

@section('content')
	@include('partials.page-header')
	@php $filters = FrontPage::get_news_tags(); $filter_type = "post_tag" @endphp
	@include('partials.post-filters')
	@php $news = FrontPage::get_news(); @endphp
	@component('layouts.article-grid')
		@php $count = 0 @endphp
		@while ($news->have_posts()) @php $news->the_post(); $post = new Archive @endphp
			@if(empty($count))
				@include('partials.grid-hero')
			@else
				@include('partials.content-news')
			@endif
			@php $count++ @endphp
		@endwhile
	@endcomponent
@endsection
