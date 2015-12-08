<?php

class BlogPostExtension extends DataExtension {

    private static $db = array(
        'FeaturedPost' => 'Boolean'
    );

    public function updateCMSFields(FieldList $fields) {
        $fields->fieldByName('blog-admin-sidebar')->push(
            FieldGroup::create(
                CheckboxField::create('FeaturedPost','Enable')
            )->setTitle('Featured Post')->setName('FeaturedPostOption')
        );
    }

}