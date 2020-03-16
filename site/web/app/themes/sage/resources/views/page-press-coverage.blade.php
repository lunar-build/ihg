@extends('layouts.app')
@section('content')
	@include('partials.page-header')
	@component('layouts.article-grid')
		@php $media = FrontPage::get_in_media(); @endphp
		@while ($media->have_posts()) @php $media->the_post(); $post = new ArchivePost @endphp
			@include('partials.grid-hero')
        @endwhile
	@endcomponent
	@include('partials.pagination', [
		'result' => $media
	])
@endsection
