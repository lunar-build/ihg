<a href='{{ $resource->permalink() }}'>
    <div class="resource-card">
        {{ var_dump($resource->get_file_size())}}
        {!! App::create_responsive_image($resource->get_thumbnail()) !!}
        <h2>{{ $resource->title() }}</h2>
        <p>ZIP - {{ $resource->get_file_size()}}</p>    
    </div>
</a>