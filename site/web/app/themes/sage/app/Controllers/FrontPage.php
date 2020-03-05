<?php

namespace App\Controllers;

use Sober\Controller\Controller;

class FrontPage extends Controller
{

    protected $hero = null;
    
    function __construct()
    {
        $this->hero = get_field('hero');
    }

    public function hero_heading()
    {
        return $this->hero['hero_heading'];
    }

    public function hero_subheading()
    {
        $text = $this->hero['hero_body'];
        return $text['hero_subheading'];

    }

    public function hero_text()
    {
        $text = $this->hero['hero_body'];
        return $text['hero_text'];
    }

    public function hero_image()
    {
        $hero_image = $this->hero['hero_image'];
        return $hero_image['image'];
    }

    public static function get_news($num_posts = -1) 
    {
        $paged = get_query_var( 'paged' ) ? get_query_var( 'paged' ) : 1; // setup pagination

        $result = new \WP_Query([
            'numberposts' => $num_posts,
            'post_type' => 'post',
            'category_name' => 'latest',
            'paged' => $paged,
            'posts_per_page' => $num_posts > -1 ? $num_posts : 13,
        ]);

        return $result;
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
            'posts_per_page'	=> 3,
            'post_type'		=> 'events',
        ]);

        return $posts;
    }

    public static function get_resources() 
    {
        $posts = new \WP_Query([
            'posts_per_page'	=> 3,
            'post_type'		=> 'resources',
        ]);

        return $posts;
    }

    public static function get_in_media($num_posts = -1) 
    {
        $paged = get_query_var( 'paged' ) ? get_query_var( 'paged' ) : 1; // setup pagination

        $posts =new \WP_Query([
            'numberposts' => $num_posts,
            'post_type' => 'post',
            'category_name' => 'in-media',
            'paged' => $paged,
            'posts_per_page' => $num_posts > -1 ? $num_posts : 13,
        ]);
        
        return $posts;
    }

    public static function get_news_tags()
    {
        $terms = get_terms([
            'taxonomy' => 'post_tag',
            'hide_empty' => false, // set to true on prods
        ]);

        return $terms;
    }

    public static function get_video()
    {
        $field = get_field('youtube');

        return [
            'image' => $field['image'],
            'text' => $field['video_text'],
            'embed_code' => $field['embed_code'],
        ];
    }
}
