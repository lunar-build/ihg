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