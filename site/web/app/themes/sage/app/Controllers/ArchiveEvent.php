<?php

namespace App\Controllers;

use Sober\Controller\Controller;

class ArchiveEvent extends Controller
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

    public function date()
    {
        $date = date_create(get_field('date'));
        return date_format($date, 'dM');
    } 

    public function link()
    {
        return get_permalink($this->post->id);
    } 
}
