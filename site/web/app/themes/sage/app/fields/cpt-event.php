<?php

namespace App;

use StoutLogic\AcfBuilder\FieldsBuilder;

$event = new FieldsBuilder('event');

$event
    ->setLocation('post_type', '==', 'events');
  
$event
    ->addTab('Information', ['placement' => 'left'])
        ->addDatePicker('date', [
            'label' => 'Event Date',
            'required' => 1,
            'display_format' => 'd F Y',
            'return_format' => 'd F Y',
        ])
        ->addTimePicker('start_time', [
            'label' => 'Start Time',
            'instructions' => '',
            'required' => 0,
            'display_format' => 'g:ia',
            'return_format' => 'g:ia',
        ])
        ->addTimePicker('end_time', [
            'label' => 'End Time',
            'instructions' => '',
            'required' => 0,
            'display_format' => 'g:ia',
            'return_format' => 'g:ia',
        ])
        ->addRepeater('address', [
            'button_label' => 'Add Line',
            'layout' => 'block',
          ])->addText('Line');

$event
    ->addTimePicker('doors_open', [
        'label' => 'Doors Open',
        'instructions' => '',
        'required' => 0,
        'display_format' => 'g:ia',
        'return_format' => 'g:ia',
    ])
    ->addGoogleMap('location', [
        'label' => 'Event Location',
        'instructions' => '',
        'required' => 0,
        'center_lat' => '52.4115',
        'center_lng' => '1.7776',
        'zoom' => 5,
        'height' => '',
    ]);
$event
    ->addGroup('youtube', [
        'label' => 'Video',
        'instructions' => '',
        'required' => 1,
        'layout' => 'inline',
    ])
    ->addText('embed_code', [
        'label' => 'Embed Code',
        'instructions' => 'The unique code for the youtube video e.g. the bit after "v=" watch?v=jnMUp2c9AzA',
        'required' => 1,
    ])
    ->addFields(get_field_partial('partials.image_upload'));

return $event;
