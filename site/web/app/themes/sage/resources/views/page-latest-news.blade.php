@extends('layouts.app')

@section('content')
	@include('partials.page-header')
	@php $news = FrontPage::get_news(); @endphp
	@component('layouts.article-grid')
		@while ($news->have_posts()) @php $news->the_post(); $post = new Archive @endphp
			@include('partials.content-news')
		@endwhile
	@endcomponent
@endsection
