<?php

namespace App\Controllers;

use Sober\Controller\Controller;

class ArchiveEvent extends Controller
{
    public function title()
    {
        return get_post()->post_title;
    } 

    public function description()
    {
        return get_post()->post_content;
    } 

    public function date()
    {
        $date = date_create(get_field('date'));
        return date_format($date, 'dM');
    } 

    public function link()
    {
        return get_permalink(get_post()->id);
    } 
}
