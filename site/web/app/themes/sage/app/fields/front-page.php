<?php

namespace App;

use StoutLogic\AcfBuilder\FieldsBuilder;

$page = new FieldsBuilder('page');

$page
    ->setLocation('post_type', '==', 'page')
    ->and('page_type', '==', 'front_page');

//** HERO **//

$group =
    $page->addGroup('hero', [
        'label' => 'Hero',
        'instructions' => 'This content will appear in the hero at the top of the front page',
        'required' => 1,
        'layout' => 'inline',
        ])
        ->addText('hero_heading', [
            'label' => 'Hero Heading',
            'instructions' => 'Add a heading for the hero section. Max character length set to preserve page layout',
            'maxlength' => '40',
        ]);
            
        
$group 
    ->addGroup('hero_body', [
        'label' => 'Hero Text',
        'instructions' => 'Add a subheader and some body text for the hero section. Max character lengths set to preserve page layout',
        'required' => 1,
        'layout' => 'inline',
    ])
        ->addText('hero_subheading', [
            'label' => 'Subheading',
            'maxlength' => '40',
        ])
        ->addTextArea('hero_text', [
            'label' => 'Text',
            'maxlength' => '200',
        ]);

$group
    ->addGroup('hero_image', [
        'label' => 'Hero Image',
        'instructions' => 'Upload a background image',
        'required' => 1,
        'layout' => 'inline',
    ])
        ->addFields(get_field_partial('partials.image_upload'));

//** VIDEO **//

$page->addGroup('youtube', [
    'label' => 'Hero Video',
    'instructions' => '',
    'required' => 1,
    'layout' => 'inline',
])
    ->addText('embed_code', [
        'label' => 'Embed Code',
        'instructions' => 'The unique code for the youtube video e.g. the bit after "v=" watch?v=jnMUp2c9AzA',
        'required' => 1,
    ])
    ->addText('video_text', [
        'label' => 'Text that sits in the video panel',
        'required' => 1,
    ])
    ->addFields(get_field_partial('partials.image_upload'));


return $page;