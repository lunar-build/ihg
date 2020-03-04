<article class="preview-card resource-card has-hover">
    {{-- IMAGE --}}
    <figure class="resource-image">
        @component('partials.modal', [
            'title' => $resource->title(),
            'attachment_id' => $resource->get_thumbnail(),
            'download_url' => $resource->get_file_path(),
            'file' => [
                'type' => $resource->get_file_type()   ,
                'size' => $resource->get_file_size()
            ]
        ])
            {!! App::create_responsive_image($resource->get_thumbnail()) !!}
        @endcomponent
    </figure>
    {{-- TEXT --}}
    <div class=resource-card-text>
        <h2>{{ $resource->title() }}</h2>
        <p class="file-meta">{{$resource->get_file_type()}} - {{ $resource->get_file_size() }}</p>
    </div> 
</article>

