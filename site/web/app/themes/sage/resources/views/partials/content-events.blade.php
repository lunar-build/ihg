@php $post = new ArchiveEvent @endphp
<article class="event-single">
    <header>
        <p class="archive-title">Upcoming Events</p>
        <div class="event-date">
            <p>{{ $post->date() }}</p>
        </div>
        <h3>{{ $post->title() }}</h3>
    </header>

    <div class="content">
        <section class="event-info">
            <div class="event-meta">
                <p><strong>Date & Time</strong></p>
                <time>{{$post->long_date()}}</time>
                <time>{{$post->start_time()}} - {{$post->end_time()}}</time>
                <p>Doors open: {{$post->doors_open()}}</p>
            </div>
            <div class="event-meta">
                <p><strong>Location</strong></p>
                @foreach ($post->address() as $a)
                    <p>{{$a['Line']}}</p>
                @endforeach
                <a class="btn-default link-primary" ref="#">View map</a>
            </div>
        </section>

        <p>@php echo strlen($post->description()) < 123 ? $post->description() : substr($post->description(), 0, 123) . '...' @endphp<p>

        <section class="event-video">
            @component('partials.modal', $post->video())
                <div class="btn-video">
                    @include('partials.video-btn-content', ['show_text' => false])
                </div>
             @endcomponent
        </section>
    </div>
</article>