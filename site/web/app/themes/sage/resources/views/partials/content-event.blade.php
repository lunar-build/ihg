<div class="event-card">
    <div class="event-date-title">
        <p>{{ $event->date() }}</p>
        <h3>{{ $event->title() }}</h3>
    </div>
    <p>{{ $event->description() }}<p>
    <a href="{{ $event->link() }}">View event</a>
</div>