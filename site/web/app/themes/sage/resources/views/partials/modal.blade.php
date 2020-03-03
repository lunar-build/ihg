<button class="modal-btn">
    {{ $slot }}
</button>
<div class="modal modal--hide">
    <div class="modal-inner">
        <header>
            {!! App::create_responsive_image($attachment_id) !!}
            <h3>{{$title}}</h3>
            <p>Some image size</p>
        </header>
        <a download href="{{wp_get_attachment_url($attachment_id)}}">Download</a>
    </div>
</div>