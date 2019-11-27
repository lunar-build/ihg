@extends('layouts.app')

@section('content')
  @while(have_posts()) @php the_post() @endphp
    @include('partials.page-header')
    <div class="page">
			<div class="container container--outer">
				<section>
					<h2>An example of a full width container</h2>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
				</section>
			</div>

			<div class="container container--outer">
				<div class="container container--inner">
					<section>
						<h2>An example of a constricted width container</h2>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
					</section>
				</div>
			</div>

			<div class="container container--outer">
				<div class="container container--inner">
					<section>
						<h2>An example of a 4 column layout</h2>
						<div class="col-4">
							<article class="col-4__item">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</article>
							<article class="col-4__item">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</article>
							<article class="col-4__item">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</article>
							<article class="col-4__item">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</article>
						</div>
					</section>
				</div>
			</div>

			<div class="container container--outer">
				<div class="container container--inner">
					<section>
						<h2>An example of a 3 column layout</h2>
						<div class="col-3">
							<article class="col-3__item">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</article>
							<article class="col-3__item">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</article>
							<article class="col-3__item">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</article>
						</div>
					</section>
				</div>
			</div>

			<div class="container container--outer">
				<div class="container container--inner">
					<section>
						<h2>An example of a 2 column layout</h2>
						<div class="col-2">
							<article class="col-2__item">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</article>
							<article class="col-2__item">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</article>
						</div>
					</section>
				</div>
			</div>
    	<!-- @include('partials.content-page') -->
  @endwhile
@endsection
