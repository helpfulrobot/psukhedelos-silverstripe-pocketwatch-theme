<?php
class GalleryPage extends Page {

        private static $many_many = array(
            'GalleryImages' => 'Image'
        );

        function getCMSFields() {

            $fields = parent::getCMSFields();

            $fields->addFieldToTab(
                'Root.Upload',
                $uploadField = new UploadField(
                    $name = 'GalleryImages',
                    $title = 'Upload one or more images'
                )
            );
            $uploadField->setFolderName('GalleryImages');
            $uploadField->setAllowedFileCategories('image');
            return $fields;
        }
    }

class GalleryPage_Controller extends Page_Controller {}
