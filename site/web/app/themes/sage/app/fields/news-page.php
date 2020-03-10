<?php

namespace App;

use StoutLogic\AcfBuilder\FieldsBuilder;

$hero = new FieldsBuilder('hero');

$hero
    ->setLocation('post_type', '==', 'page');


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