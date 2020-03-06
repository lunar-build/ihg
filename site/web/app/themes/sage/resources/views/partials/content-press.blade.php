<article class="press-card" >
    <figure class="featured-image">
        {!! App::create_responsive_image($post->get_image()) !!}
    </figure>
    <div>
        <p class="press-card-date spaced-text">{{ $post->formatted_date() }}</p>
        <h2 class="entry-title press-title">
            <a href="{{ get_permalink() }}">{!! get_the_title() !!}</a>
        </h2>
    </div>
    <a class="press-card-link" href="{{ get_permalink() }}">
        <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" viewBox="0 0 25 25">
            <g fill="none" fill-rule="evenodd" stroke="#CCC" stroke-linecap="square" stroke-width="3" transform="rotate(-45 14.54 7.98)">
                <line x1="14" x2="14" y1="14"/>
                <line x1="14" y1="14" y2="14"/>
            </g>
        </svg>
    </a>
</article>