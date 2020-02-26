<article {!! post_class() !!} >

    {{-- FEATURED IMAGE --}}
    <figure class="featured-image">
            {!! App::create_responsive_image($post->get_image()) !!}
    </figure>

    <div class="news-card-text">
    
        {{-- DATE --}}
        <p>{{ $post->formatted_date() }}</p>

        {{-- TITLE --}}
        <header>
            <h2 class="entry-title"><a href="{{ get_permalink() }}">{!! get_the_title() !!}</a></h2>
        </header>

        {{-- EXCERPT --}}
        <div class="entry-summary">
            @php the_excerpt() @endphp
        </div>
    </div>

</article>