<?php

namespace App;

use StoutLogic\AcfBuilder\FieldsBuilder;

$file_upload = new FieldsBuilder('file_upload');
$file_upload
    ->addTab('File Upload', ['placement' => 'left'])
        ->addImage('thumbnail', [
            'label' => 'File Thumbnail',
            'instructions' => '',
            'required' => 0,
            'return_format' => 'id',
            'preview_size' => 'thumbnail',
            'library' => 'all',
            // 'min_width' => '',
            // 'min_height' => '',
            // 'min_size' => '',
            // 'max_width' => '',
            // 'max_height' => '',
            // 'max_size' => '',
            // 'mime_types' => '',
        ])
        ->addFile('file', [
            'label' => 'File',
            'instructions' => '',
            'required' => 0,
            'return_format' => 'array',
            'library' => 'all',
            'min_size' => '',
            'max_size' => '',
            'mime_types' => '',
        ]);
            
return $file_upload;