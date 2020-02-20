<?php

namespace App;

use StoutLogic\AcfBuilder\FieldsBuilder;

$event = new FieldsBuilder('event');

$event
    ->setLocation('post_type', '==', 'events');
  
$event
    ->addTab('Information', ['placement' => 'left'])
        ->addDateTimePicker('date_time_picker_field', [
            'label' => 'Event Date/Time',
            'required' => 1,
        ])
        ->addRepeater('Address', [
            'button_label' => 'Add Line',
            'layout' => 'block',
          ])->addText('Line');

$event
    ->addTimePicker('time_picker_field', [
        'label' => 'Doors Open',
        'instructions' => '',
        'required' => 0,
        'display_format' => 'g:i a',
        'return_format' => 'g:i a',
    ])
    ->addGoogleMap('google_map_field', [
        'label' => 'Event Location',
        'instructions' => '',
        'required' => 0,
        'center_lat' => '52.4115',
        'center_lng' => '1.7776',
        'zoom' => 5,
        'height' => '',
    ]);
return $event;
