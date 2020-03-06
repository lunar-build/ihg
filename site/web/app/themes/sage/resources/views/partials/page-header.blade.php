<div class="page-header">
  @if (get_post_type() != 'events')
    <h1 class="spaced-text uppercase">{!! App::title() !!}</h1>
  @endif
  @if (!empty($filters))
  	@include('partials.post-filters')
  @endif
</div>
