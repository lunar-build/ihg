<?php

namespace App\Controllers;

use Sober\Controller\Controller;

class FrontPage extends Controller
{
    public static function get_news() 
    {
        $posts =new \WP_Query([
            'numberposts' => 3,
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

    public static function get_in_media() 
    {
        $posts =new \WP_Query([
            'numberposts' => 3,
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

    public static function get_pages()
    {
        return [
            'news' => get_post_type_archive_link('post') . '/news',
            'image_gallery' => get_post_type_archive_link('images'),
            'events' => get_post_type_archive_link('events'),
            'resources' => get_post_type_archive_link('resources'),
            'in_media' => get_post_type_archive_link('post') . '/media',
        ];
    }

}
