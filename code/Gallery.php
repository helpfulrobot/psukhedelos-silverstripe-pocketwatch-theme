<?php
/**
 * Gallery
 * This holds all of our Gallery Albums.
 *
 * @package white-rabbits
 * @subpackage pocket-watch
 *
 */

class Gallery extends Page {

    private static $description = 'A Pocketwatch Gallery Listing';

    public static $has_many = array(
        'GalleryAlbums'=>'GalleryAlbum'
    );

    private static $allowed_children = array(
        'GalleryAlbum'
    );


    public function getCMSFields() {

        $fields = parent::getCMSFields();

        return $fields;

    }

}

class Gallery_Controller extends ContentController {

    public function init() {
        parent::init();
    }

}
