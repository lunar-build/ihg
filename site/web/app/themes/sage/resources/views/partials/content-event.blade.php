<div class="event-card">
    <div class="event-date-title">
        <div class="date">
            <p>{{ $event->date() }}</p>
        </div>
        <h3>{{ $event->title() }}</h3>
    </div>
    
    <p>{{ $event->description() }}<p>
    <a href="{{ $event->link() }}">View event</a>
</div>