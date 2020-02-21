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
            'display_format' => 'g:i a',
            'return_format' => 'g:i a',
        ])
        ->addTimePicker('end_time', [
            'label' => 'End Time',
            'instructions' => '',
            'required' => 0,
            'display_format' => 'g:i a',
            'return_format' => 'g:i a',
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
        'display_format' => 'g:i a',
        'return_format' => 'g:i a',
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
return $event;
