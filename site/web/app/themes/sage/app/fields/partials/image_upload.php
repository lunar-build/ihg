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
            'return_format' => 'id',
            'preview_size' => 'thumbnail',
            'library' => 'all',
        ]);
            
return $image_upload;