<article class="news-card">
    <div {!! post_class() !!}>
        {{-- FEATURED IMAGE --}}
        <figure class="featured-image">
            {!! App::create_responsive_image($post->get_image()) !!}
        </figure>

        <div class="card-text">

            {{-- DATE --}}
            <p class="card-date">{{ $post->formatted_date() }}</p>
            
            {{-- TITLE --}}
            <h2 class="card-title"><a href="{{ get_permalink() }}">{!! get_the_title() !!}</a></h2>

            {{-- EXCERPT --}}
            <p class="entry-summary">@php echo strlen(get_the_content()) < 123 ? get_the_content() : substr(get_the_content(), 0, 123) . '...' @endphp</p>
        </div>
        
    </div>
</article>