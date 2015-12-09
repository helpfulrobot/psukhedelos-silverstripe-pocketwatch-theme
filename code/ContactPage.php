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
            $uploadHeroField = UploadField::create(
                'ContactImage',
                'Please upload an image to be displayed on your Contact Page. '
            )   ->setDescription('We recommend a <strong>360x482</strong> image.')

        );

        $uploadHeroField->setFolderName('Contact');
        $uploadHeroField->setAllowedFileCategories('image');

        return $fields;
    }
}
class ContactPage_Controller extends UserDefinedForm_Controller {
    /*
     *
     * TextField::create('MyText', 'My Text Label')
    ->setDescription('More <strong>detailed</strong> help')
    ->addExtraClass('cms-description-toggle')
    ->setRightTitle('<a class="cms-description-trigger">My custom icon</a>');
     * */
}
