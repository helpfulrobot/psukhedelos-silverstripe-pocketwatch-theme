<?php
class MapSlice extends Page {

    private static $description = "Pocketwatch: A Page that is used to embed google maps into the homepage";

    private static $allowed_children = false;

    static $db = array(
      'GoogleMapsAPIKey' => 'Text',
      'MapOrigin' => 'Text'

    );

    static $defaults = array(
        'ShowInMenus' => false
    );

    function getCMSFields() {
        $fields = parent::getCMSFields();
        $fields->addFieldToTab('Root.Map', new TextField('GoogleMapsAPIKey', "Google Maps API Key"));
        $fields->addFieldToTab('Root.Map', new TextField('MapOrigin', "Start Location"));



        return $fields;
    }
}
class MapSlice_Controller extends ContentController {}
