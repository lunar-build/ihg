<header class="banner">
  <div class="container-inner header-container">
    <a class="brand" href="{{ home_url('/') }}">
      <img class="logo--color" src="{{App::get_image_asset('logo_color.png')}}" alt="Logo" />
      <img class="logo--white" src="{{App::get_image_asset('logo_white.png')}}" alt="Logo" />
    </a>
    <div id="nav-toggle">
      <svg xmlns="http://www.w3.org/2000/svg" width="48" height="48" viewBox="0 0 48 48">
        <g fill="none" fill-rule="evenodd" stroke="#A00062" stroke-linecap="square" stroke-width="2" transform="translate(10 16)">
          <line x1=".246" x2="27.754" y1=".5" y2=".5"/>
          <line x1=".246" x2="27.754" y1="8.5" y2="8.5"/>
          <line x1=".246" x2="27.754" y1="16.5" y2="16.5"/>
        </g>
      </svg>
    </div>
    <nav class="nav-primary" data-toggle="close">
      @if (has_nav_menu('primary_navigation'))
        {!! wp_nav_menu(['theme_location' => 'primary_navigation', 'menu_class' => 'nav']) !!}
      @endif
    </nav>
  </div>
</header>
