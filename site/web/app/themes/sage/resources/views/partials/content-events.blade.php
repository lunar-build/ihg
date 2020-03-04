@php $post = new ArchiveEvent @endphp
<article class="event-card">
    <div class="event-date-title">
        <div class="date">
            <p>{{ $post->date() }}</p>
        </div>
        <h3>{{ $post->title() }}</h3>
    </div>
    
    <p>@php echo strlen($post->description()) < 123 ? $post->description() : substr($post->description(), 0, 123) . '...' @endphp<p>
    <a href="{{ $post->link() }}">View event</a>
</article>