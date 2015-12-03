<?php

class PocketwatchSiteConfig extends DataExtension {

    private static $db = array(
        'Address' => 'Varchar(255)',
        'Phone' => 'Varchar(255)',
        'Email' => 'Varchar(255)',
        'Facebook' => 'Varchar(255)',
        'Twitter' => 'Varchar(255)',
        'Linkedin' => 'Varchar(255)',
        'Instagram' => 'Varchar(255)'
    );

    public function updateCMSFields(FieldList $fields) {

        $fields->addFieldToTab("Root.Social",
            new TextField("Address", "Physical Address")
        );
        $fields->addFieldToTab("Root.Social",
            new TextField("Phone", "Phone Number")
        );
        $fields->addFieldToTab("Root.Social",
            new TextField("Email", "Email Address")
        );
        $fields->addFieldToTab("Root.Social",
            new TextField("Facebook", "Facebook")
        );
        $fields->addFieldToTab("Root.Social",
            new TextField("Twitter", "Twitter")
        );
        $fields->addFieldToTab("Root.Social",
            new TextField("Linkedin", "Linkedin")
        );
        $fields->addFieldToTab("Root.Social",
            new TextField("Instagram", "Instagram")
        );
    }
}