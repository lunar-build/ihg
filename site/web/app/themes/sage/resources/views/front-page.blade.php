@extends('layouts.app')

@section('content')
	@while (have_posts(FrontPage::get_news())) @php the_post(); $post = new Archive @endphp
		{{ $post->title() }}
		{{ $post->post_date() }}
		@php echo $post->description() @endphp
		@php echo App::create_responsive_image($post->get_image()) @endphp
	@endwhile

	@php $images = FrontPage::get_image_gallery(); @endphp
	@while ($images->have_posts()) @php $images->the_post(); $image = new ArchiveImage; @endphp
		@include('partials.content-image')
	@endwhile

	@php $events = FrontPage::get_events(); @endphp
	@while ($events->have_posts()) @php $events->the_post(); $event = new ArchiveEvent; @endphp
		@include('partials.content-event')
	@endwhile
@endsection
