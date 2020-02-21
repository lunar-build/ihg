{{ $image->title() }}
{{ $image->description() }}
@php echo App::create_responsive_image($image->get_image()) @endphp