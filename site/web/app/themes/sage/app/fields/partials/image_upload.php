<?php

namespace App;

use StoutLogic\AcfBuilder\FieldsBuilder;

$file_upload = new FieldsBuilder('file_upload');

$file_upload
    ->addTab('Image Upload', ['placement' => 'left'])
        ->addImage('image_field', [
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
            
return $file_upload;