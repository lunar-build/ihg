<article class="news-card">
    {{-- FEATURED IMAGE --}}
    <figure class="featured-image">
        @component('partials.modal', [
            'title' => $image->title(),
            'attachment_id' => $image->get_image(),
        ])
            {!! App::create_responsive_image($image->get_image()) !!}
        @endcomponent
    </figure>
</article>