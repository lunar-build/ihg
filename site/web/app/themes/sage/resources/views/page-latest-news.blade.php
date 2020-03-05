@extends('layouts.app')

@section('content')
	@php $filters = FrontPage::get_news_tags(); 
		$filter_type = "post_tag"; 
		$default = [
			'label' => 'All',
			'value' => get_permalink()
		]; 
	@endphp
	@include('partials.page-header')
	@component('layouts.article-grid')
		@php $count = 0 @endphp
		@php $news = FrontPage::get_news(); @endphp
		@while ($news->have_posts()) @php $news->the_post(); $post = new ArchivePost @endphp
			@if(empty($count))
				@include('partials.grid-hero')
			@else
				@include('partials.content-news')
			@endif
			@php $count++ @endphp
        @endwhile
        @include('partials.pagination', [
            'result' => $news
        ])
	@endcomponent
@endsection
