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
    </div>
</section>
