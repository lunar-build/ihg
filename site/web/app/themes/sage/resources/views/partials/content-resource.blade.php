{{ $resource->title() }}
{{ $resource->description() }}
{{ $resource->get_file_path() }}
@php echo App::create_responsive_image($resource->get_thumbnail()) @endphp