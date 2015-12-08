<?php
class ContactPage extends UserDefinedForm {

    private static $description = "Pocketwatch: Contact Page";

    private static $has_one = array(
        'ContactImage' => 'Image'
    );

    function getCMSFields() {
        $fields = parent::getCMSFields();

        $fields->addFieldToTab(
            'Root.Image Upload',
            $uploadHeroField = new UploadField(
                'ContactImage',
                'Please upload an image to be used as your Contact Image.'
            )
        );

        $uploadHeroField->setFolderName('Contact');
        $uploadHeroField->setAllowedFileCategories('image');

        return $fields;
    }
}
class ContactPage_Controller extends UserDefinedForm_Controller {}
