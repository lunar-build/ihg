<?php

namespace App\Controllers;

use Sober\Controller\Controller;

class App extends Controller
{
    public function siteName()
    {
        return get_bloginfo('name');
    }

    public static function title()
    {
        if (is_home()) {
            if ($home = get_option('page_for_posts', true)) {
                return get_the_title($home);
            }
            return __('Latest Posts', 'sage');
        }
        if (is_tag()) {
            return single_tag_title();
        }
        if (is_category()) {
            return single_cat_title();
        }
        if (is_archive()) {
            return str_replace('Archives: ', '', get_the_archive_title()); // There must be a better way to do this?
        }
        if (is_search()) {
            return sprintf(__('Search Results for %s', 'sage'), get_search_query());
        }
        if (is_404()) {
            return __('Not Found', 'sage');
        }
        return get_the_title();
    }

    // get src of image
    public static function get_image_url($image_ID)
    {
        return wp_get_attachment_image_url($image_ID, 'xl' );
    }

    // generate responsive img with srcset, class and animate-on-scroll
    public static function create_responsive_image($image_ID, $classStr=false, $width="100%")
    {
        $img_src = wp_get_attachment_image_url( $image_ID, 'xl' );
        $img_srcset = wp_get_attachment_image_srcset( $image_ID, 'full' );
        $img_alt = get_post_meta( $image_ID, '_wp_attachment_image_alt', true );
        $img = '<img ';
        $img .= 'class="no-print ';
        $img .= $classStr ? $classStr : '';
        $img .= '" ';
        $img .= 'src="' . esc_attr( $img_src ) . '" ';
        $img .= 'srcset="' . esc_attr( $img_srcset ) . '" ';
        $img .= 'sizes="' . self::responsive_image_size_string($width) . '" ';
        $img .= 'alt="' . $img_alt . '" ';
        $img .= '>';
        return $img;
    }

    public static function responsive_image_size_string($width) {
        if ( $width === 'thumb' ) {
            return '10vw';
        }
        if ( $width === '33%' ) {
            return '100vw, (min-width: 1440px) 480px, (min-width: 1024px) 342px, (min-width: 768px) 256px';
        }
        if ( $width === '50%' ) {
            return '100vw, (min-width: 1440px) 720px, (min-width: 1024px) 512px, (min-width: 768px) 384px';
        }
        if ( $width === '100%' ) {
            return '100vw, (min-width: 1440px) 1440px, (min-width: 1024px) 1024px, (min-width: 768px) 768px';
        }
    }

    public static function get_image_asset($asset)
    {
        return get_template_directory_uri() . '/../dist/images/' . $asset;
    }
}
