<?php
class TextSlice extends Page {

    private static $description = "Pocketwatch: A Plain Text Slice that is displayed on the home page";

    private static $allowed_children = false;

    private static $has_one = array(
        'BackgroundImage' => 'Image',
    );

    static $defaults = array(
        'ShowInMenus' => false
    );

    function getCMSFields() {
        $fields = parent::getCMSFields();

        $fields->addFieldToTab(
            'Root.Image Upload',
            $uploadHeroField = new UploadField(
                'BackgroundImage',
                'Please upload an image to be used as the Background Image for your Text Slice.'
            )
        );

        $uploadHeroField->setFolderName('TextSlice');
        $uploadHeroField->setAllowedFileCategories('image');

        return $fields;
    }
}
class TextSlice_Controller extends ContentController {}
