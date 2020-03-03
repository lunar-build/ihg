<article class="front-page-panel video-panel">
   <p>{{$text}}
      <button class="js-video btn-video">
         <i class="fa fa-play-circle"></i>
         <span>Play Video</span>
      </button>
   </p>
   <figure class="featured-image">
        {!! App::create_responsive_image($image) !!}
   </figure>
</article>

{{-- {{$embed_code}} --}}
