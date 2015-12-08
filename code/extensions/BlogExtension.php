<?php

class BlogExtension extends DataExtension {

    private static $db = array(
        'FeaturedPosts' => 'Boolean'
    );

    public function updateSettingsFields(FieldList $fields) {
            $fields->addFieldToTab(
                'Root.Settings',
                FieldGroup::create(
                    CheckboxField::create('FeaturedPosts','Show Featured Posts?')
                )->setTitle('Featured Posts')->setName('FeaturedPostsOptions')
            );
    }
}