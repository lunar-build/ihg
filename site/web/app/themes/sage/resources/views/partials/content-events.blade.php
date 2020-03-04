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
            <p class="event-datetime">
                <p><strong>Date & Time</strong></p>
                <time>{{$post->long_date()}}</time>
                <time>{{$post->start_time()}} - {{$post->end_time()}}</time>
                Doors open: {{$post->doors_open()}}
            </p>
            <p class="event-location">
                <p><strong>Location</strong></p>
                @foreach ($post->address() as $a)
                    <p>{{$a['Line']}}</p>
                @endforeach
            </p>
        </section>
        <p>@php echo strlen($post->description()) < 123 ? $post->description() : substr($post->description(), 0, 123) . '...' @endphp<p>
    </div>
</article>