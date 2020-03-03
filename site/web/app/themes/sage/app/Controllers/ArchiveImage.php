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
        $file_size = filesize(get_attached_file($this->get_image()));
        return $file_size.'MB';
    }

    public function get_file_type()
    {
        return get_post_mime_type($this->get_image());
    }
}
