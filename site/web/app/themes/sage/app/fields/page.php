<?php

namespace App;

use StoutLogic\AcfBuilder\FieldsBuilder;

$page = new FieldsBuilder('page');

$page
    ->setLocation('post_type', '==', 'page')
    ->addPostObject('hero', [
        'label' => 'Grid Hero Post',
        'taxonomy' => [],
        'multiple' => 0,
        'return_format' => 'object',
        'ui' => 1,
    ]);
return $page;