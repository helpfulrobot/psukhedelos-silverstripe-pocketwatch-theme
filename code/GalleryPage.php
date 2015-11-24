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
        $conf->addComponent(new GridFieldSortableRows('SortOrder'));

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

        $dataColumns->setDisplayFields(array(
          'Description' => "Description",
          'Image' => 'Image'
        ));

        return $fields;
    }

    public function GalleryObjects() {
        return $this->getManyManyComponents('GalleryObjects')->sort('SortOrder');
    }

}

/*
    An object in a Gallery, an image with a description.
*/
class GalleryObject extends DataObject {

    public static $db=array(
        'Description'=>'Text'
    );
    private static $has_one = array(
      'Image' => 'Image'
    );
    function getCMSFields() {
      $fields = parent::getCMSFields();

      $fields->addFieldToTab(
          'Root.Main',
          $uploadField = new UploadField(
              $name = 'Image',
              $title = 'Please upload an image to display showcase in your gallery.')
      );

      $uploadField->setFolderName('GalleryImages');
      $uploadField->setAllowedFileCategories('image');

      return $fields;
    }

}
