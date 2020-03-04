<article class="press-card" >
    <div {!! post_class() !!}>
        {{-- DATE --}}
        <hr class="separator-top">
        <p class="press-card-date">{{ $post->formatted_date() }}</p>

        {{-- TITLE --}}
        <h2 class="entry-title press-title">
            <a href="{{ get_permalink() }}">{!! get_the_title() !!}</a>
        </h2>
        <hr class="separator-bottom">
        <a class="press-card-link" href="{{ get_permalink() }}">
            <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" viewBox="0 0 25 25">
                <g fill="none" fill-rule="evenodd" stroke="#CCC" stroke-linecap="square" stroke-width="3" transform="rotate(-45 14.54 7.98)">
                    <line x1="14" x2="14" y1="14"/>
                    <line x1="14" y1="14" y2="14"/>
                </g>
            </svg>
        </a>
    </div>
</article>