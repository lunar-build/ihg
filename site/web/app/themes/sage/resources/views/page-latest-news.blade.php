@extends('layouts.app')

@section('content')
	@php $news = FrontPage::get_news(); @endphp
	@while ($news->have_posts()) @php $news->the_post(); $post = new Archive @endphp
		{{-- @todo - create partial  --}}
		{{ $post->title() }}
		{{ $post->post_date() }}
		@php echo $post->description() @endphp
		@php echo App::create_responsive_image($post->get_image()) @endphp
	@endwhile
@endsection
