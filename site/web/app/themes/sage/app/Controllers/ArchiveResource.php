<?php

namespace App\Controllers;

use Sober\Controller\Controller;

class ArchiveResource extends Controller
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

    public function permalink() 
    {
        return get_the_permalink();
    }

    public function get_file_path()
    {
        $file = get_field('file');
        return $file['url'];
    }

    public function get_thumbnail()
    {
        return get_field('thumbnail');
    }
}
