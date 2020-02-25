<a href='{{ $resource->permalink() }}'>
    <div class="resource-card">
        {!! App::create_responsive_image($resource->get_thumbnail()) !!}
        <h2>{{ $resource->title() }}</h2>
    </div>
</a>