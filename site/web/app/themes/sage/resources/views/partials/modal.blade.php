<button class="modal-btn js-modal-open btn-default">
    {{ $slot }}
    @if (!empty($embed_poster))
        {!! App::create_responsive_image($embed_poster) !!}
    @endif
    <span class="preview"></span>
</button>
<div class="modal modal--hide">
    <div class="modal-inner">
        <button class="modal-close js-modal-close btn-default">X</button>
        <figure class="featured-{{empty($embed_code) ? 'image' : 'video' }}">
            @if (empty($embed_code))
                {!! App::create_responsive_image($attachment_id) !!}
            @else
                @include('partials.youtube-embed', [
                    'embed_code' => $embed_code
                ])
            @endif
        </figure>
        @if (empty($embed_code))
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