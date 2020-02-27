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
        ->addText('Hero Header')
            ->setInstructions('Add a header for the hero section');
        
$group 
    ->addGroup('hero_text', [
        'label' => 'Hero Text',
        'instructions' => 'Add a subheader and some body text for the hero section',
        'required' => 1,
        'layout' => 'inline',
    ])
        ->addText('Subheading')
        ->addTextArea('Text'); // @todo set max character length?

$group
    ->addGroup('hero_image', [
        'label' => 'Hero Image',
        'instructions' => 'Upload a background image',
        'required' => 1,
        'layout' => 'inline',
    ])
        ->addFields(get_field_partial('partials.image_upload'));

//** VIDEO **//

$page->addText('youtube_code', [
    'label' => 'YouTube Embed Code',
    'instructions' => 'The unique code for the youtube video e.g. the bit after "v=" watch?v=jnMUp2c9AzA',
    'required' => 1,
]);

return $page;