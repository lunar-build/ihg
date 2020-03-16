<section class="hero-panel">
    {{--IMAGE  --}}
    <figure class="hero-image">
        {!! App::create_responsive_image($hero_image) !!}
    </figure>
    
    <header class="hero-heading">
        <h1>{{ strtoupper($hero_heading) }}</h1>
    </header>
    <div class="hero-body">
        <h2 class="hero-subheading spaced-text heading-spacer">{{ strtoupper($hero_subheading) }}</h2>
        <p class="hero-text">{{ $hero_text }}</p>
        <button class="btn-scroll btn-default" id="btn-scroll" data-section="latest-news"></button>
    </div>
</section>
