<?php
/*
  A Gallery Page.  This contains a sortable table of Gallery Objects
*/
class GalleryPage extends Page {
    public static $many_many=array(
        'GalleryObjects'=>'GalleryObject'
    );

    public static $many_many_extraFields=array(
        'GalleryObjects'=>array(
            'SortOrder'=>'Int'
        )
    );


    public function getCMSFields() {
        $fields=parent::getCMSFields();

        $conf=GridFieldConfig_RelationEditor::create(10);
        $conf->addComponent($sortable=new GridFieldSortableRows('SortOrder'));

        //Append new records to the top
        $sortable->setAppendToTop(true);

        $fields->addFieldToTab('Root.MyGallery',
          $grid = new GridField('GalleryObjects', 'My Gallery', $this->GalleryObjects(), $conf)
        );

        // GridField configuration
        $config = $grid->getConfig();

        //
        // Modification of existing components can be done by fetching that component.
        // Consult the API documentation for each component to determine the configuration
        // you can do.
        //
        $dataColumns = $config->getComponentByType('GridFieldDataColumns');

        return $fields;
    }

    public function GalleryObjects() {
        return $this->getManyManyComponents('GalleryObjects')->sort('SortOrder');
    }

}

class GalleryPage_Controller extends ContentController {

	public function init() {
		parent::init();
	}

}
