<?php

namespace App;

use StoutLogic\AcfBuilder\FieldsBuilder;

$field = new FieldsBuilder('page_content');

$field
    ->addFlexibleContent('sections')
        ->addLayout('text')
            ->addText('Heading')
            ->addWysiwyg('Paragraph', [
                'tabs' => 'text',
                'toolbar' => 'basic'
            ])
        ->addLayout('quote')
            ->addTextArea('text', [
                'label' => 'Quote',
            ])
        ->addLayout('images')
            ->addText('caption', [
                'label' => 'Caption',
                'instructions' => 'Caption that will sit under the images',
            ])
            ->addRepeater('columns', [
                'min' => 1, 
                'max' => 3,
            ])
            ->addImage('image', [
                'label' => 'Image',
                'return_format' => 'id',
                'preview_size' => 'thumbnail',
            ]);

            
return $field;