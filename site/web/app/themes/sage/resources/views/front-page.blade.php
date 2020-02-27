@extends('layouts.app')

@section('content')
	
	@include('partials.hero-panel')
	<section class="front-page-panel news-panel">
		<div class="container-inner">
			<header>
				<h2 class="panel-title">{{ strtoupper('Latest news') }}</h2>
				<a href="/latest-news">View all</a>
			</header>
			@php $news = FrontPage::get_news(3); @endphp
			@while ($news->have_posts()) @php $news->the_post(); $post = new Archive @endphp
				@include('partials.content-news')
			@endwhile
		</div>
	</section>
	
	<section class="front-page-panel events-panel">
		<div class="container-inner">
			<header>
				<h2 class="panel-title">{{ strtoupper('Upcoming events') }}</h2>
				<a href="/events">View all</a>
			</header>
			@php $events = FrontPage::get_events(); @endphp
			@while ($events->have_posts()) @php $events->the_post(); $event = new ArchiveEvent; @endphp
				@include('partials.content-event')
			@endwhile
		</div>
	</section>

	<section class="front-page-panel image-gallery-panel">
		<div class="container-inner">
			<header>
				<h2 class="panel-title">{{ strtoupper('Image gallery') }}</h2>
				<a href="/images">View all</a>
			</header>
			@php $images = FrontPage::get_image_gallery(); @endphp
			@while ($images->have_posts()) @php $images->the_post(); $image = new ArchiveImage; @endphp
				@include('partials.content-image')
			@endwhile
		</div>
	</section>

	<section class="front-page-panel resources-panel">
		<div class="container-inner">
			<header>
				<h2 class="panel-title">{{ strtoupper('Downloadable Resources') }}</h2>
				<a href="/resources">View all</a>
			</header>
			@php $resources = FrontPage::get_resources(); @endphp
			@while ($resources->have_posts()) @php $resources->the_post(); $resource = new ArchiveResource; @endphp
				@include('partials.content-resource')
			@endwhile
		</div>
	</section>

	<section class="front-page-panel press-panel">
		<div class="container-inner">
			<header>
				<h2 class="panel-title">{{ strtoupper('In the media') }}</h2>
				<a href="/in-the-media">View all</a>
			</header>
			@php $in_media = FrontPage::get_in_media(3); @endphp
			@while ($in_media->have_posts()) @php $in_media->the_post(); $media = new Archive; @endphp
				@include('partials.content-press')
			@endwhile
		</div>
	</section>
@endsection
