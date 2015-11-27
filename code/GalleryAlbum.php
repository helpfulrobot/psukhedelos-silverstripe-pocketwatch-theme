<?php
/**
 * Gallery Album
 * This contains a sortable gridfield of Gallery Items.
 * Users can also define tags on this album for categorisation.
 *
 * @package white-rabbits
 * @subpackage pocket-watch
 *
 */

// We still need an idea of an "album cover",
// How can we select one of the sub gallery objects to display?
// If there is one, that is simple, but how do we allow a user to do this?

class GalleryAlbum extends Page {

    public static $db=array(
        'Title' => 'Varchar(255)',
        'Description'=>'Text',
    );

    public static $has_many = array(
        'GalleryItems'=>'GalleryItem'
    );

    private static $many_many = array(
        'GalleryTags' => 'GalleryTag'
    );

    private static $allowed_children = array(
        'GalleryItem'
    );

    // Tell the datagrid what fields to show in the table
    public static $summary_fields = array(
        'Title' => 'Title',
        'Description' => 'Description'
    );

    static $searchable_fields = array(
        'Title',
        'Description'
    );

    public function getCMSFields() {

        $fields = parent::getCMSFields();

        $conf = GridFieldConfig_RelationEditor::create(10);
        $conf->addComponent($sortable=new GridFieldSortableRows('SortID'));

        //Append new GalleryItems to the top
        $sortable->setAppendToTop(true);

        $field = TagField::create(
            'GalleryTags',
            'Gallery Tags',
            GalleryTag::get(),
            $this->GalleryTags()
        )
            ->setShouldLazyLoad(true) // tags should be lazy loaded
            ->setCanCreate(true);     // new tag DataObjects can be created;

        $fields->addFieldToTab('Root.Tags', $field);

        $fields->addFieldToTab('Root.MyAlbum',
            new GridField(
                'GalleryItems',
                'My Album',
                $this->GalleryItems(),
                $conf
            )
        );

        return $fields;
    }

    public function AlbumCover(){
        if(count($this->GalleryItems())>0) {
            return $this->GalleryItems()->first()->GalleryImage();
        }
    }

}

class GalleryAlbum_Controller extends ContentController {

    public function init() {
        parent::init();
    }

}
