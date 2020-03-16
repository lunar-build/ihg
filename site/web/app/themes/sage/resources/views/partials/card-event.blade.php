<article class="news-card event-card">
    <header class="event-date-title">
        <div class="event-date">
            <p>{{ $event->date() }}</p>
        </div>
        <h3><a href="{{ $event->link() }}">{{ $event->title() }}</a></h3>
    </header>
    
    <p>@php echo strlen($event->description()) < 123 ? $event->description() : substr($event->description(), 0, 123) . '...' @endphp<p>
    <a href="{{ $event->link() }}">View event</a>
</article>