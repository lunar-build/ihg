@php $post = new ArchivePost; @endphp
<article @php post_class(); $category = get_the_category()[0]; @endphp>
  <header>
    <div class="single-post-header">
      <div class="meta">
        <p class="archive-title">{{$category->name}}</p>
        <p class="date"><time>{{ $post->formatted_date() }}</time></p>
        <h1 class="entry-title">{!! get_the_title() !!}</h1>
      </div>
      <figure class="image">
        {!! App::create_responsive_image($post->get_image()) !!}
        <figcaption>Lorem ipsum dolor sit amet consectetur adipisicing elit.</figcaption>
      </figure>
    </div>
  </header>
  <div class="entry-content">
    @php echo $post->description() @endphp
  </div>
  <footer class="single-post-footer">
    <h3>Other News</h3>
    @component('layouts.article-grid')
      @php $related_posts = $post->get_related(); @endphp
      @while ($related_posts->have_posts()) @php $related_posts->the_post(); $post = new ArchivePost @endphp
        @include('partials.content-news')
      @endwhile
    @endcomponent
  </footer>
</article>
