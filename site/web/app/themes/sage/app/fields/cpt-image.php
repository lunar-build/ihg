<?php

namespace App;

use StoutLogic\AcfBuilder\FieldsBuilder;

$image = new FieldsBuilder('image');

$image
    ->setLocation('post_type', '==', 'images');
  
$image
    ->addFields(get_field_partial('partials.image_upload'));

return $image;