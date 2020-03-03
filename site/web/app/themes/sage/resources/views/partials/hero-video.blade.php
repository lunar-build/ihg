<article class="front-page-panel video-panel">
   <p>{{$text}}</p>
   @component('partials.modal', [
      'embed_code' => $embed_code
   ])
      <i class="fa fa-play-circle"></i>
      <span>Play Video</span>
   @endcomponent
   <figure class="featured-image">
        {!! App::create_responsive_image($image) !!}
   </figure>
</article>

{{-- {{$embed_code}} --}}
