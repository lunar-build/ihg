<?php

namespace App\Controllers;

use Sober\Controller\Controller;

class ArchiveImage extends Controller
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
        return get_field('image');
    }

    public function get_file_size()
    {
        return \App\readable_file_size($this->get_image());
    }

    public function get_file_type()
    {
        return str_replace('image/', '', get_post_mime_type($this->get_image()));
    }
}
