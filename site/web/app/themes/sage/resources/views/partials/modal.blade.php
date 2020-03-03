<button class="modal-btn js-modal-open btn-default">
    {{ $slot }}
</button>
<div class="modal modal--hide">
    <div class="modal-inner">
        <button class="modal-close js-modal-close btn-default">X</button>
        <figure class="featured-image">
            @if (empty($video))
                {!! App::create_responsive_image($attachment_id) !!}
            @else
                @include('partials.youtube-embed', [
                    'video' => $video
                ])
            @endif
        </figure>
        @if (empty($video))
            <div class="modal-side">
                <section class="modal-content">
                    <h3 class="modal-title">{{$title}}</h3>
                <p class="modal-meta">{{$file['type']}} {{$file['size']}}</p>
                </section>
                <a class="modal-cta" download href="{{isset($download_url) ? $download_url : wp_get_attachment_url($attachment_id)}}">Download</a>
            </div>    
        @endif
    </div>
</div>