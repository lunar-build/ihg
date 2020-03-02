<article class="news-card grid-hero">
    <div class="news-card-text">
        <header>
            <p class="news-card-date"><time>{{ $post->formatted_date() }}</time></p>
            <h2 class="entry-title"><a href="{{ get_permalink() }}">{!! get_the_title() !!}</a></h2>
        </header>
        <div class="entry-content">
            @php the_content() @endphp
        </div>
        <a href="{{ get_permalink() }}">Read more</a>
    </div>
    <figure class="featured-image">
        @php echo App::create_responsive_image($post->get_image()) @endphp
    </figure>
</article>