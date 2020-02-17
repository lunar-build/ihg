<?php

namespace App;

Class CPT {
  public function register_events()
  {
    register_post_type(
      'events',
      [
        'labels' => [
          'name' => 'Events',
          'singular_name' => ['Event'],

        ],
        'public'             => true,
        'publicly_queryable' => true,
        'description' => 'Add Events here',
        'show_ui' => true,
        'show_in_menu' => true,
        'show_in_nav_menus' => true,
        'show_in_admin_bar' => true,
        'menu_icon' => 'dashicons-calendar-alt',
        'has_archive' => true,
        'rewrite' => ['slug' => 'events']
      ]
    );
  }
  public function register_images()
  {
    register_post_type(
      'images',
      [
        'labels' => [
          'name' => 'Images',
          'singular_name' => ['Image'],

        ],
        'public'             => true,
        'publicly_queryable' => true,
        'description' => 'Add Images here',
        'show_ui' => true,
        'show_in_menu' => true,
        'show_in_nav_menus' => true,
        'show_in_admin_bar' => true,
        'menu_icon' => 'dashicons-camera-alt',
        'has_archive' => true,
      ]
    );
  }
  public function register_resources()
  {
    register_post_type(
      'resources',
      [
        'labels' => [
          'name' => 'Resources',
          'singular_name' => ['resource'],

        ],
        'public'             => true,
        'publicly_queryable' => true,
        'description' => 'Add Resources here',
        'show_ui' => true,
        'show_in_menu' => true,
        'show_in_nav_menus' => true,
        'show_in_admin_bar' => true,
        'menu_icon' => 'dashicons-downloads',
        'has_archive' => true,
      ]
    );
  }
}