<?php

namespace App;

use StoutLogic\AcfBuilder\FieldsBuilder;

$image_upload = new FieldsBuilder('image_upload');

$image_upload
    ->addTab('Image Upload', ['placement' => 'left'])
        ->addImage('image', [
            'label' => 'Image',
            'instructions' => '',
            'required' => 0,
            'return_format' => 'array',
            'preview_size' => 'thumbnail',
            'library' => 'all',
            // 'min_width' => '',
            // 'min_height' => '',
            // 'min_size' => '',
            // 'max_width' => '',
            // 'max_height' => '',
            // 'max_size' => '',
            // 'mime_types' => '',
        ]);
            
return $image_upload;