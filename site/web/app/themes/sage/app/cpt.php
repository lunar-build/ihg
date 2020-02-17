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
        'description' => 'Add Events here',
        'show_ui' => true,
        'show_in_menu' => true,
        'show_nav_menus' => true,
        'menu_icon' => 'dashicons-calendar-alt'
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
        'description' => 'Add Images here',
        'show_ui' => true,
        'show_in_menu' => true,
        'show_nav_menus' => true,
        'menu_icon' => 'dashicons-camera-alt'
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
        'description' => 'Add Resources here',
        'show_ui' => true,
        'show_in_menu' => true,
        'show_nav_menus' => true,
        'menu_icon' => 'dashicons-calendar-alt'
      ]
    );
  }
}