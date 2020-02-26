<?php

namespace App\Controllers;

use Sober\Controller\Controller;

class Archive extends Controller
{
    protected $post = null;
    
    function __construct()
    {
        $this->post = get_post();
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
        return get_post_thumbnail_id($this->post->id);
    }
    
    public function post_date()
    {
        return $this->post->post_date;
    } 

    public function formatted_date()
    {
        $the_date = date_create($this->post->post_date);
        return date_format($the_date, 'd F, Y');
        
    }
}
