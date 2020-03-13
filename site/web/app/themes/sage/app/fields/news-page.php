<?php

namespace App;

use StoutLogic\AcfBuilder\FieldsBuilder;

$hero = new FieldsBuilder('hero');

$news_page = get_page_by_path('whats-new');

$hero
    ->setLocation('post_type', '==', 'page')
        ->and('post', '==', $news_page->ID);

$hero
->addPostObject('hero', [
    'label' => 'Hero',
    'instructions' => '',
    'required' => 1,
    'taxonomy' => [],
    'return_format' => 'object',
    'ui' => 1,
]); 

return $hero;