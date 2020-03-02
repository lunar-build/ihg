<section class="hero-panel">
    {{--IMAGE  --}}
    <figure class="hero-image">
        {!! App::create_responsive_image($hero_image) !!}
    </figure>
    
    <h1 class="hero-heading">{{ strtoupper($hero_heading) }}</h1>
    <div class="hero-body">
        <h2 class="hero-subheading">{{ strtoupper($hero_subheading) }}</h2>
        <hr class="hero-rule">
        <p class="hero-text">{{ $hero_text }}</p> 
    </div>
</section>