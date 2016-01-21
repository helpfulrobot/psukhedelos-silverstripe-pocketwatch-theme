<?php
class VideoSlice extends Page {
  

    private static $description = "Pocketwatch: A Page that is used to embed Youtube Videos into the homepage";

    private static $allowed_children = false;
    
    static $db = array(
        'VideoURL' => 'Text',
        'VideoURL2' => 'Text',
    );
    
    static $defaults = array(
        'ShowInMenus' => false
    );
    
    function getCMSFields() {
        $fields = parent::getCMSFields();
      
        $fields->addFieldToTab(
            'Root.Youtube',
            new TextField('VideoURL', "Youtube Video ID")
        );
        
        $fields->addFieldToTab(
            'Root.Youtube',
            new CheckboxField('VideoAutoPlay', "Auto Play?")
        );
        
        $fields->addFieldToTab(
            'Root.Youtube',
            new TextField('VideoURL2', "Youtube Video ID #2")
        );
        
        $fields->addFieldToTab(
            'Root.Youtube',
            new CheckboxField('VideoAutoPlay2', "Auto Play #2?")
        );
    
        return $fields;
    }
}
class VideoSlice_Controller extends ContentController {}