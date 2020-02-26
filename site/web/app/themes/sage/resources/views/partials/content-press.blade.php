<article class="press-card" >
    <div {!! post_class() !!}>
        {{-- DATE --}}
        <hr class="separator-top">
        <p class="press-card-date">{{ $post->formatted_date() }}</p>

        {{-- TITLE --}}
        <header>
            <h2 class="entry-title press-title">
                <a href="{{ get_permalink() }}">{!! get_the_title() !!}</a>
            </h2>
        </header>
        <hr class="separator-bottom">
    </div>

</article>