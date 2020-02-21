<?php

namespace App\Controllers;

use Sober\Controller\Controller;

class FrontPage extends Controller
{
    public static function get_news($num_posts = -1) 
    {
        $posts =new \WP_Query([
            'numberposts' => $num_posts,
            'post_type' => 'post',
            'tax_query' => [
                [
                    'taxonomy' => 'post_tag',
                    'field' => 'slug',
                    'terms' => 'latest',
                ]
            ]
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
            'numberposts'	=> 3,
            'post_type'		=> 'events',
        ]);

        return $posts;
    }

    public static function get_resources() 
    {
        $posts = new \WP_Query([
            'numberposts'	=> 3,
            'post_type'		=> 'resources',
        ]);

        return $posts;
    }

    public static function get_in_media($num_posts = -1) 
    {
        $posts =new \WP_Query([
            'numberposts' => $num_posts,
            'post_type' => 'post',
            'tax_query' => [
                [
                    'taxonomy' => 'post_tag',
                    'field' => 'slug',
                    'terms' => 'in-media',
                ]
            ]
        ]);
        return $posts;
    }
}
