<section class="video-panel">
   <div class="text">
      <p>{{$text}}</p>
      @component('partials.modal', [
         'embed_code' => $embed_code
      ])
         <i class="fa fa-play-circle"></i>
         <span>Play Video</span>
      @endcomponent
   </div>
   <figure class="featured-image">
        {!! App::create_responsive_image($image) !!}
   </figure>
</section>

{{-- {{$embed_code}} --}}
