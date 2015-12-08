<?php

class BlogExtension extends DataExtension {

    private static $db = array(
        'FeaturedPosts' => 'Boolean'
    );

    //TODO: add title to checkbox
    public function updateSettingsFields(FieldList $fields) {
            $fields->addFieldToTab(
                'Root.Settings',
                FieldGroup::create(
                    CheckboxField::create('FeaturedPosts','Show Featured Posts?')
                )->setTitle('Featured Posts')->setName('FeaturedPostsOptions')
            );
    }
}