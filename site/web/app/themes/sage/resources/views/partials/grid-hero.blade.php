@php
    $hero = ArchivePost::get_hero();
    $content = $hero ? $hero->post_content : get_the_content();
    $link = $hero ? $hero->permalink : get_permalink();
@endphp
<article class="news-card grid-hero">
    <div class="card-text">
        <header>
            <p class="card-date spaced-text"><time>{{ $hero ? $hero->formatted_date : $post->formatted_date() }}</time></p>
            <h2 class="card-title"><a href="{{ $link }}">{{$hero ? $hero->post_title : get_the_title()}}</a></h2>
        </header>
        <p class="entry-summary">{{strlen($content) < 123 ? $content : substr($content, 0, 123) . '...'}}</p>
        <a class="read-more" href="{{ $link }}">Read more</a>
    </div>
    <figure class="featured-image">
        {!! App::create_responsive_image($hero ? $hero->image : $post->get_image()) !!}
    </figure>
</article>

