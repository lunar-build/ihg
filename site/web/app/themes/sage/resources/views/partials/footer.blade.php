<footer class="main-footer content-info">
    <div class="container-inner footer-container">
        <a class="brand" href="{{ home_url('/') }}">
            <img class="logo--white" src="{{App::get_image_asset('logo_white.png')}}" alt="Logo" />
        </a>
        <nav class="nav-footer">
            <ul class="nav-footer-list">
                <li class="nav-footer-list-item"><a href="/">{{ get_bloginfo('name', 'display') }}</a></li>
                <li class="nav-footer-list-item"><a href="/">Privacy Policy</a></li>
                <li class="nav-footer-list-item"><a href="/">Terms & Conditions</a></li>
                <li class="nav-footer-list-item"><a href="/">Contact Us</a></li>
            </ul>
        </nav>
    </div>
</footer>
