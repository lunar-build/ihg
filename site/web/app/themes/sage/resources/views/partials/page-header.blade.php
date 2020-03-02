<div class="page-header">
  <h1>{!! App::title() !!}</h1>
  @if (!empty($filters))
  	@include('partials.post-filters')
  @endif
</div>
