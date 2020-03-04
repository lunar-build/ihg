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
                <time>{{'29 September 2020'}}</time>
                <time>{{'9:30 - 4pm'}}</time>
                Doors open: {{'9am'}}
            </p>
            <p class="event-location">
                <p><strong>Location</strong></p>
                <p>Conference Center</p>
                <p>Station Road 89a, Bristol, CBA 1DE</p>
                <p><a href="#">View map</a></p>
            </p>
        </section>
        <p>@php echo strlen($post->description()) < 123 ? $post->description() : substr($post->description(), 0, 123) . '...' @endphp<p>
    </div>
</article>