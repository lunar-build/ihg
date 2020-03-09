<header class="banner">
  <div class="container-inner header-container">
    <a class="brand" href="{{ home_url('/') }}">
      <img class="logo--color" src="{{App::get_image_asset(BRAND . '/logo_color.png')}}" alt="Logo" />
      <img class="logo--white" src="{{App::get_image_asset(BRAND . '/logo_white.png')}}" alt="Logo" />
    </a>
    <div id="nav-toggle">
      @include("partials.hamburger")
    </div>
    <nav class="nav-primary" data-toggle="close">
      @if (has_nav_menu('primary_navigation'))
        {!! wp_nav_menu(['theme_location' => 'primary_navigation', 'menu_class' => 'nav']) !!}
      @endif
    </nav>
  </div>
</header>
