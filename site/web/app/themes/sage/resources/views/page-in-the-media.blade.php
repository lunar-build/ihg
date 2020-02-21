@extends('layouts.app')

@section('content')
  @php $in_media = FrontPage::get_in_media(); @endphp
  @while ($in_media->have_posts()) @php $in_media->the_post(); $media = new Archive; @endphp
      {{-- @todo - create partial  --}}
      {{ $media->title() }}
      {{ $media->post_date() }}
      @php echo $media->description() @endphp
  @endwhile
@endsection
