@php
    $hero = ArchivePost::get_hero();
    $content = get_the_content(null, null, $hero ? $hero : null);
    $content = strlen($content) < 123 ? $content : substr($content, 0, 123) . '...';
    $link = get_permalink($hero ? $hero : null);
    $title = get_the_title($hero ? $hero : null);
@endphp
<article class="news-card grid-hero">
    <div class="card-text">
        <header>
            <p class="card-date spaced-text"><time>{{ $hero ? ArchivePost::format_date($hero) : $post->formatted_date() }}</time></p>
            <h2 class="card-title"><a href="{{ $link }}">{{$title}}</a></h2>
        </header>
        <p class="entry-summary">{{$content}}</p>
        <a class="read-more" href="{{ $link }}">Read more</a>
    </div>
    <figure class="featured-image">
        {!! App::create_responsive_image($hero ? ArchivePost::get_image_for_post($hero) : $post->get_image()) !!}
    </figure>
</article>

