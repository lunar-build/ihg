<article class="gallery-hero has-hover">
    {{-- FEATURED IMAGE --}}
    <figure class="featured-image">
        @component('partials.modal', [
            'title' => $image->title(),
            'attachment_id' => $image->get_image(),
            'file' => [
                'type' => $image->get_file_type(),
                'size' => $image->get_file_size()
            ]
        ])
            {!! App::create_responsive_image($image->get_image()) !!}
        @endcomponent
    </figure>
</article>

