<section class="video-panel">
   <div class="text">
      <p>{{$text}}</p>
      @component('partials.modal', [
         'embed_code' => $embed_code
      ])
         @include('partials.video-btn-content', ['show_text' => true])
      @endcomponent
   </div>
   <figure class="featured-image">
        {!! App::create_responsive_image($image) !!}
   </figure>
</section>

{{-- {{$embed_code}} --}}
