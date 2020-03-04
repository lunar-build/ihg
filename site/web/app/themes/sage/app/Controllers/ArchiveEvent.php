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
        return strtoupper(date_format($date, 'dM'));
    } 

    public function long_date()
    {
        return get_field('date');
    } 

    public function start_time()
    {
        return get_field('start_time');
    }

    public function end_time()
    {
        return get_field('end_time');
    } 

    public function doors_open()
    {
        return get_field('doors_open');
    } 

    public function address()
    {
        return get_field('address');
    } 

    public function link()
    {
        return get_permalink($this->post->id);
    } 
}
