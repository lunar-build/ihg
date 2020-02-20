<?php

namespace App;

use StoutLogic\AcfBuilder\FieldsBuilder;

$image = new FieldsBuilder('resources');

$image
    ->setLocation('post_type', '==', 'resources');
  
$image
    ->addFields(get_field_partial('partials.file_upload'));

return $image;