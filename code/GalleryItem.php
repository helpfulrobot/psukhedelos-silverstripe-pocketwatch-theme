<?php
/*
An object in a Gallery, an image with a title and a description.
*/
class GalleryItem extends DataObject {

    public static $db=array(
        'SortID' => 'Int'
    );

    private static $has_one = array(
        'GalleryImage' => 'Image',
        'GalleryAlbum' => 'GalleryAlbum'
    );

    static $allowed_children = 'none';

    // Tell the datagrid what fields to show in the table
    public static $summary_fields = array(
        'ImageThumbnail' => 'Image'
    );

    function getCMSFields() {

        $fields = parent::getCMSFields();
        $fields->removeByName('SortID');
        $fields->removeByName('GalleryAlbum');
        $fields->addFieldToTab(
        'Root.Main',
        $uploadField = new UploadField(
                'GalleryImage',
                'Please upload an image to showcase in your gallery.'
            )
        );

//        $uploadField->setFolderName('Gallery/' .  $this->Gallery()->Title());

//        $album = $this->GalleryAlbum()->Title();
        $uploadField->setFolderName('Gallery');
        $uploadField->setAllowedFileCategories('image');

        return $fields;
    }

    //this function gets the CMS thumbnail for the summary fields to use
    public function ImageThumbnail() {
        return $this->GalleryImage()->CMSThumbnail();
    }

}
