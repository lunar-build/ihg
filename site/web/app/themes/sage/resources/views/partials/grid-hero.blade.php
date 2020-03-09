<article class="news-card grid-hero">
    <div class="card-text">
        <header>
            <p class="card-date spaced-text"><time>{{ $post->formatted_date() }}</time></p>
            <h2 class="card-title"><a href="{{ get_permalink() }}">{!! get_the_title() !!}</a></h2>
        </header>
        <p class="entry-summary">@php echo strlen(get_the_content()) < 123 ? get_the_content() : substr(get_the_content(), 0, 123) . '...' @endphp</p>
        <a class="read-more" href="{{ get_permalink() }}">Read more</a>
    </div>
    <figure class="featured-image">
        @php echo App::create_responsive_image($post->get_image()) @endphp
    </figure>
</article>

