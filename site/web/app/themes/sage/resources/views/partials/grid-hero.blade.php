<article id="grid-hero" @php post_class() @endphp>
    <div>
        <header>
            <p class="news-card-date">{{ $post->formatted_date() }}</p>
            <h1 class="entry-title">{!! get_the_title() !!}</h1>
        </header>
        <div class="entry-content">
            @php the_content() @endphp
        </div>
    </div>
    <div>
        <figure>
            @php echo App::create_responsive_image($post->get_image()) @endphp
        </figure>
    </div>
</article>
// <article class="news-card">
//     <div {!! post_class() !!}>
//         {{-- FEATURED IMAGE --}}
//         <figure class="featured-image">
//             {!! App::create_responsive_image($post->get_image()) !!}
//         </figure>

//         <div class="news-card-text">

//             {{-- DATE --}}
//             <p class="news-card-date">{{ $post->formatted_date() }}</p>
            
//             {{-- TITLE --}}
//             <h2 class="entry-title"><a href="{{ get_permalink() }}">{!! get_the_title() !!}</a></h2>

//             {{-- EXCERPT --}}
//             <p class="entry-summary">@php the_excerpt() @endphp</p>
//         </div>
        
//     </div>
// </article>