<?php

namespace App\Controllers;

use Sober\Controller\Controller;

class FrontPage extends Controller
{
    public static function get_news() 
    {
        $posts = get_posts(array(
            'numberposts'	=> 3,
            'post_type'		=> 'post',
            'meta_key'		=> 'post_type',
            'meta_value'	=> 'Latest News'
        ));

        return $posts;
    }
}
