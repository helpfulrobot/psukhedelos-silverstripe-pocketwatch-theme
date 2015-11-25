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
            $name = 'GalleryImage',
            $title = 'Please upload an image to display showcase in your gallery.')
    );

    $uploadField->setFolderName('GalleryImages');
    $uploadField->setAllowedFileCategories('image');

    return $fields;
  }

  // this function get the cms thumbnail for the summary fields to use
  public function ImageThumbnail() {
    return $this->GalleryImage()->CMSThumbnail();
  }

    // Tell the datagrid what fields to show in the table
  public static $summary_fields = array(
    'ImageThumbnail' => 'Thumbnail',
    'Title' => 'Title',
    'Description' => 'Type'
  );

  static $searchable_fields = array(
    'Title',
    'Description'
  );

}
