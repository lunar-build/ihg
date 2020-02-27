<header class="banner">
  <div class="container-inner header-container">
    <a class="brand" href="{{ home_url('/') }}">{{ get_bloginfo('name', 'display') }}</a>
    <div id="nav-toggle">
      <i class="fa fa-bars" aria-hidden="true"></i>
    </div>
    <nav class="nav-primary" data-toggle="close">
      @if (has_nav_menu('primary_navigation'))
        {!! wp_nav_menu(['theme_location' => 'primary_navigation', 'menu_class' => 'nav']) !!}
      @endif
    </nav>
  </div>
</header>
