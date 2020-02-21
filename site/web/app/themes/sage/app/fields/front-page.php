<?php

namespace App;

use StoutLogic\AcfBuilder\FieldsBuilder;

$page = new FieldsBuilder('page');

$page
    ->setLocation('post_type', '==', 'page')
    ->and('page_type', '==', 'front_page');

$group =
    $page->addGroup('hero_tiles', [
        'label' => 'Hero Tiles',
        'instructions' => 'This content will appear in the tiles found within the hero at the top of the front page',
        'required' => 1,
        'layout' => 'table',
    ]);

$group 
    ->addGroup('tile_1', [
        'label' => 'Tile 1',
        'instructions' => '',
        'required' => 1,
        'layout' => 'inline',
    ])
        ->addText('Heading')
        ->addTextArea('Text');

$group 
    ->addGroup('tile_2', [
        'label' => 'Tile 2',
        'instructions' => '',
        'required' => 1,
        'layout' => 'inline',
    ])
        ->addText('Heading')
        ->addTextArea('Text');

$group 
    ->addGroup('tile_3', [
        'label' => 'Tile 3',
        'instructions' => '',
        'required' => 1,
        'layout' => 'inline',
    ])
        ->addText('Heading')
        ->addTextArea('Text');

$page->addText('youtube_code', [
    'label' => 'YouTube Embed Code',
    'instructions' => 'The unique code for the youtube video e.g. the bit after "v=" watch?v=jnMUp2c9AzA',
    'required' => 1,
]);

return $page;