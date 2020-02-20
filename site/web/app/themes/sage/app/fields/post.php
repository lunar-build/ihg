<?php

namespace App;

use StoutLogic\AcfBuilder\FieldsBuilder;

$post = new FieldsBuilder('post');

$post
    ->setLocation('post_type', '==', 'post');

$post 
    ->addSelect('select_field', [
        'label' => 'Post Type',
        'instructions' => '',
        'required' => 1,
        'wrapper' => [
            'width' => '',
            'class' => '',
            'id' => '',
        ],
        'choices' => ['Latest News', 'In the Media'],
        'default_value' => 'Latest News',
        'allow_null' => 0,
        'multiple' => 0,
        'ui' => 0,
        'ajax' => 0,
        'return_format' => 'value',
        'placeholder' => '',  
    ]);
return $post;