<?php

namespace App\Controllers;

use Sober\Controller\Controller;

class ArchiveEvent extends Controller
{
    public static function title()
    {
        return get_post()->post_title;
    } 

    public static function description()
    {
        return get_post()->post_content;
    } 

    public static function date()
    {
        $date = date_create(get_field('date'));
        return date_format($date, 'dM');
    } 

    public static function link()
    {
        return get_permalink(get_post()->id);
    } 
}
