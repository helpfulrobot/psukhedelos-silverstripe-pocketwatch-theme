<?php
/*
    An object in a Gallery, an image with a description.
*/
class GalleryObject extends DataObject {

    public static $db=array(
        'Title' => 'Varchar',
        'Description'=>'Text'
    );
    private static $has_one = array(
      'GalleryImage' => 'Image'
    );
    function getCMSFields() {
      $fields = parent::getCMSFields();

      $fields->addFieldToTab(
          'Root.Main',
          $uploadField = new UploadField(
              $name = 'Gallery',
              $title = 'Please upload an image to display showcase in your gallery.')
      );

      $uploadField->setFolderName('GalleryImages');
      $uploadField->setAllowedFileCategories('image');

      return $fields;
    }

}
