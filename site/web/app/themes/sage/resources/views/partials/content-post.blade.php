@php $post = new ArchivePost;  @endphp
@php $category = get_the_category()[0]; @endphp
<article class="single-post">
  <header>
    <div class="header">
      <div class="meta">
        <p class="archive-title spaced-text">{{$category->name}}</p>
        <p class="date spaced-text"><time>{{ $post->formatted_date() }}</time></p>
        <h1 class="entry-title spaced-text">{!! get_the_title() !!}</h1>
      </div>
      <figure class="image">
        {!! App::create_responsive_image($post->get_image()) !!}
        <figcaption>Lorem ipsum dolor sit amet consectetur adipisicing elit.</figcaption>
      </figure>
  </header>
  <div class="entry-content">
    @php echo $post->description() @endphp
  </div>
  <footer class="single-post-footer">
    <h3 class="spaced-text uppercase">Other News</h3>
    @component('layouts.article-grid')
      @php $related_posts = $post->get_related(); @endphp
      @while ($related_posts->have_posts()) @php $related_posts->the_post(); $post = new ArchivePost @endphp
        @include('partials.content-news')
      @endwhile
    @endcomponent
  </footer>
</article>
