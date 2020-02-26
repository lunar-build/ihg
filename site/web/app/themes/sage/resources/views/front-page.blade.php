@extends('layouts.app')

@section('content')
	@php $news = FrontPage::get_news(3); @endphp
	@while ($news->have_posts()) @php $news->the_post(); $post = new Archive @endphp
		@include('partials.content-news')
	@endwhile
	
	@php $events = FrontPage::get_events(); @endphp
	@while ($events->have_posts()) @php $events->the_post(); $event = new ArchiveEvent; @endphp
		@include('partials.content-event')
	@endwhile

	@php $images = FrontPage::get_image_gallery(); @endphp
	@while ($images->have_posts()) @php $images->the_post(); $image = new ArchiveImage; @endphp
		@include('partials.content-image')
	@endwhile

	@php $resources = FrontPage::get_resources(); @endphp
	@while ($resources->have_posts()) @php $resources->the_post(); $resource = new ArchiveResource; @endphp
		@include('partials.content-resource')
	@endwhile

	@php $in_media = FrontPage::get_in_media(3); @endphp
	@while ($in_media->have_posts()) @php $in_media->the_post(); $media = new Archive; @endphp
		@include('partials.content-press')
	@endwhile

@endsection
