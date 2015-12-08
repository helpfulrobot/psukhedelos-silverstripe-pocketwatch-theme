<?php

class BlogPostExtension extends DataExtension {

    private static $db = array(
        'FeaturedPost' => 'Boolean'
    );

//    //TODO: add title to checkbox
//    public function updateSettingsFields(FieldList $fields) {
//        $fields->addFieldsToTab('Root.Featured', new CheckboxField ("FeaturedPost", "Featured Post"));
//    }

}