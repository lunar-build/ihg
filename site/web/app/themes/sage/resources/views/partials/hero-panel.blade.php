<section class="hero-panel">
    {{--IMAGE  --}}
    <figure class="hero-image">
        {!! App::create_responsive_image($hero_image) !!}
    </figure>
    
    <header class="hero-heading">
        <h1>{{ strtoupper($hero_heading) }}</h1>
    </header>
    <div class="hero-body">
        <h2 class="hero-subheading">{{ strtoupper($hero_subheading) }}</h2>
        <p class="hero-text">{{ $hero_text }}</p>
        <button class="btn-scroll btn-default" id="btn-scroll" data-section="latest-news">
            <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" viewBox="0 0 25 25">
                <g fill="none" fill-rule="evenodd" stroke="#FFF" stroke-linecap="square" stroke-width="3" transform="rotate(45 8.761 13.959)">
                    <line x1="14" x2="14" y1="14"/>
                    <line x1="14" y1="14" y2="14"/>
                </g>
            </svg>
        </button>
    </div>
</section>
