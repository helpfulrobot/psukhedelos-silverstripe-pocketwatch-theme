<?php
/**
* Gallery Page
* This contains a sortable gridfield of Gallery Objects
*
* @package white-rabbits
* @subpackage pocket-watch
*
* @method ManyManyList GalleryObjects() List of gallery objects in this gallery
*/

class GalleryPage extends Page {

    public static $has_many = array(
        'GalleryObjects'=>'GalleryObject'
    );


    public function getCMSFields() {

        $fields = parent::getCMSFields();

        $conf = GridFieldConfig_RelationEditor::create(10);
        $conf->addComponent($sortable=new GridFieldSortableRows('SortID'));

        //Append new GalleryObjects to the top
        $sortable->setAppendToTop(true);

        $fields->addFieldToTab('Root.MyGallery',
            new GridField(
                'GalleryObjects',
                'My Gallery',
                $this->GalleryObjects(),
                $conf
            )
        );

        return $fields;

    }

}

class GalleryPage_Controller extends ContentController {

    public function init() {
        parent::init();
    }

}
