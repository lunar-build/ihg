<article class="container-inner">
    <div class="resource-card">
        <a class="resource-link" href="{{ $resource->permalink() }}">
            {{-- IMAGE --}}
            <figure class="resource-image">
                {!! App::create_responsive_image($resource->get_thumbnail()) !!}
            </figure>
            {{-- TEXT --}}
            <div class=resource-card-text>
                <h2>{{ $resource->title() }}</h2>
                <p>ZIP - {{ $resource->get_file_size() }}</p>
            </div> 
        </a>   
    </div>
</article>
