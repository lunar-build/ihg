<footer class="main-footer content-info">
    <div class="container-inner footer-container">
        <a class="brand" href="{{ home_url('/') }}">
            <img class="logo--white" src="{{App::get_image_asset('logo_white.png')}}" alt="Logo" />
        </a>
        <nav class="nav-footer">
            <ul class="nav-footer-list">
                @foreach (wp_get_nav_menu_items('footer-menu') as $item)
                    <li class="nav-footer-list-item"><a href="{{$item->url}}">{{ $item->post_title }}</a></li>
                @endforeach
            </ul>
        </nav>
    </div>
</footer>
