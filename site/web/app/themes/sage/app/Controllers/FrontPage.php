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
        $posts =new \WP_Query([
            'numberposts' => $num_posts,
            'post_type' => 'post',
            'category_name' => 'latest'
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
            'category_name' => 'in-media'
        ]);
        return $posts;
    }
}
