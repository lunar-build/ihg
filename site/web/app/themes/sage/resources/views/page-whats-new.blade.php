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
	@component('layouts.article-grid', [
		'class' => 'news-grid'
	])
		@php
			$hero = ArchivePost::get_hero();
		@endphp
		@include('partials.grid-hero', [
			'post' => $hero
		])
		@php $news = FrontPage::get_news(); @endphp
		@while ($news->have_posts()) @php $news->the_post(); $post = new ArchivePost @endphp
			@include('partials.content-news')
		@endwhile
	@endcomponent
	@include('partials.pagination', [
		'result' => $news
	])
@endsection
