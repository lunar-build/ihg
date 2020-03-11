<?php

namespace App\Controllers;

use Sober\Controller\Controller;

class ArchivePost extends Controller
{
    protected $post = null;
    
    function __construct($id = null)
    {
        $this->post = $id ? get_post($id) : get_post();
    }

    public function title()
    {
        return $this->post->post_title;
    } 

    public function description()
    {
        return $this->post->post_content;
    }

    public function get_image()
    {
        return get_field('image');
    }

    public static function get_image_for_post($post)
    {
        return get_field('image', $post->ID);
    }
    
    public function post_date()
    {
        return $this->post->post_date;
    } 

    public function formatted_date()
    {
        $the_date = date_create($this->post->post_date);
        return strtoupper(date_format($the_date, 'd F Y'));   
    }

    public static function format_date($post)
    {
        $the_date = date_create($post->post_date);
        return strtoupper(date_format($the_date, 'd F Y'));   
    }

    public function get_related()
    {
        $category = get_the_category($this->post->ID)[0];

        $posts =new \WP_Query([
            'posts_per_page' => 2,
            'numberposts' => 2,
            'post_type' => $this->post->post_type,
            'category_name' => $category->slug
        ]);

        return $posts;
    }

    public function get_content()
    {
        return get_field('sections');
    }

    public static function get_hero()
    {
        $post = get_field('hero');

        return $post;
    }
    
}
