@extends('layouts.app')

@section('content')
	@while (have_posts(FrontPage::get_news())) @php the_post(); $post = new Archive @endphp
		{{ $post->title() }}
		{{ $post->post_date() }}
		@php echo $post->description() @endphp
		@php echo App::create_responsive_image($post->get_image()) @endphp
	@endwhile
@endsection
