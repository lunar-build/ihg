<button class="modal-btn js-modal-open btn-default">
    {{ $slot }}
</button>
<div class="modal modal--hide">
    <div class="modal-inner">
        <button class="modal-close js-modal-close btn-default">X</button>
        <figure class="featured-image">
            {!! App::create_responsive_image($attachment_id) !!}
        </figure>
        <div class="modal-side">
            <section class="modal-content">
                <h3 class="modal-title">{{$title}}</h3>
            <p class="modal-meta">{{$file['type']}} {{$file['size']}}</p>
            </section>
            <a class="modal-cta" download href="{{isset($download_url) ? $download_url : wp_get_attachment_url($attachment_id)}}">Download</a>
        </div>
    </div>
</div>