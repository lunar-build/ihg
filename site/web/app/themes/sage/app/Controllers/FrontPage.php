<?php

namespace App\Controllers;

use Sober\Controller\Controller;

class FrontPage extends Controller
{
    public static function get_news() 
    {
        $posts = get_posts([
            'numberposts'	=> 3,
            'post_type'		=> 'post',
            'meta_key'		=> 'post_type',
            'meta_value'	=> 'Latest News'
        ]);

        return $posts;
    }

    public static function get_image_gallery() 
    {
        $posts = new \WP_Query([
            'numberposts'	=> 5,
            'post_type'		=> 'images',
        ]);

        return $posts;
    }

    public static function get_events() 
    {
        $posts = new \WP_Query([
            'numberposts'	=> 5,
            'post_type'		=> 'events',
        ]);

        return $posts;
    }

}
