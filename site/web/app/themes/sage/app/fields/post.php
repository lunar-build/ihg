<?php

namespace App;

use StoutLogic\AcfBuilder\FieldsBuilder;

$post = new FieldsBuilder('post');

$post
    ->setLocation('post_type', '==', 'post')
    ->addFields(get_field_partial('partials.image_upload'));

return $post;