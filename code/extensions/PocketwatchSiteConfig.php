<?php

class PocketwatchSiteConfig extends DataExtension {

    private static $db = array(
        'Address' => 'Varchar(255)',
        'Phone' => 'Varchar(255)',
        'Email' => 'Varchar(255)',
        'Facebook' => 'Varchar(255)',
        'Twitter' => 'Varchar(255)',
        'Linkedin' => 'Varchar(255)',
        'Instagram' => 'Varchar(255)',
    );

    private static $has_one = array(
        'HeaderImage' => 'Image',
        'FooterLogo' => 'Image'
    );

    public function updateCMSFields(FieldList $fields) {

        $fields->addFieldToTab(
            'Root.Logo Upload',
            $uploadHeaderField = new UploadField(
                'HeaderImage',
                'Please upload the logo you would like to display in your header.'
            )
        );

        $uploadHeaderField->setFolderName('Header');
        $uploadHeaderField->setAllowedFileCategories('image');


        $fields->addFieldToTab(
            'Root.Logo Upload',
            $uploadHeroField = new UploadField(
                'FooterLogo',
                'Please upload the logo you would like to display in your header.'
            )
        );

        $uploadHeroField->setFolderName('Footer');
        $uploadHeroField->setAllowedFileCategories('image');

        $fields->addFieldToTab("Root.Contact Details",
            new TextField("Address", "Physical Address")
        );
        $fields->addFieldToTab("Root.Contact Details",
            new TextField("Phone", "Phone Number")
        );
        $fields->addFieldToTab("Root.Contact Details",
            new TextField("Email", "Email Address")
        );
        $fields->addFieldToTab("Root.Social Media",
            new TextField("Facebook", "Facebook")
        );
        $fields->addFieldToTab("Root.Social Media",
            new TextField("Twitter", "Twitter")
        );
        $fields->addFieldToTab("Root.Social Media",
            new TextField("Linkedin", "Linkedin")
        );
        $fields->addFieldToTab("Root.Social Media",
            new TextField("Instagram", "Instagram")
        );
    }
}