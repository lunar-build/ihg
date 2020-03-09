@extends('layouts.app')

@section('content')
	
	@include('partials.hero-panel')
	@include('partials.hero-video', FrontPage::get_video())
	<section class="front-page-panel news-panel">
		<div id="latest-news" class="container-inner panel-container">
			<header class="panel-header">
				<h2 class="panel-title spaced-text uppercase">What's new</h2>
				<a href="/latest-news">View all</a>
			</header>
			@php $news = FrontPage::get_news(3); @endphp
			@component('layouts.article-grid', [
				'class' => 'article-grid--front'
			])
				@while ($news->have_posts()) @php $news->the_post(); $post = new ArchivePost @endphp
					@include('partials.content-news')
				@endwhile
			@endcomponent
		</div>
	</section>
	<section class="front-page-panel image-gallery-panel front-page-panel--alt">
		<div class="container-inner panel-container">
			<header class="panel-header">
				<h2 class="panel-title spaced-text uppercase">Image gallery</h2>
				<a href="/images">View all</a>
			</header>
			@php $images = FrontPage::get_image_gallery(); @endphp
			@component('layouts.gallery-grid')
				@php $count = 0 @endphp
				@while ($images->have_posts()) @php $images->the_post(); $image = new ArchiveImage; @endphp
					@if(empty($count))
						@include('partials.gallery-hero')
					@else
						@include('partials.content-image')
					@endif
					@php $count++ @endphp
				@endwhile
			@endcomponent
		</div>
	</section>

	<section class="front-page-panel resources-panel">
		<div class="container-inner panel-container">
			<header class="panel-header">
				<h2 class="panel-title spaced-text uppercase">Downloadable Resources</h2>
				<a href="/resources">View all</a>
			</header>
			@php $resources = FrontPage::get_resources(); @endphp
			@component('layouts.article-grid', [
				'class' => 'article-grid--front'
			])
				@while ($resources->have_posts()) @php $resources->the_post(); $resource = new ArchiveResource; @endphp
					@include('partials.content-resource')
				@endwhile
			@endcomponent
		</div>
	</section>

	<section class="front-page-panel front-page-panel--alt press-panel">
		<div class="container-inner panel-container">
			<header class="panel-header">
				<h2 class="panel-title spaced-text uppercase">press coverage</h2>
				<a href="/in-the-media">View all</a>
			</header>
			<div class="panel-blocks">
				@php $in_media = FrontPage::get_in_media(3); @endphp
				@while ($in_media->have_posts()) @php $in_media->the_post(); $media = new ArchivePost; @endphp
					@include('partials.content-press')
				@endwhile
			</div>
		</div>
	</section>
@endsection
