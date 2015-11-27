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

    private static $allowed_children = array(
        'GalleryAlbum'
    );

    public function getCMSFields() {

        $fields = parent::getCMSFields();

        return $fields;
    }

    public function ActiveGalleryTags(){

        /**
         *  @TODO: think about caching this
         * @TODO: Also currently these are not unique nor in order
         *
         * */
        $ids = array_values($this->Children()->column('ID'));

        return GalleryTag::get()->distinct(true)->filterByCallback(function($tag) use ($ids){
            foreach ($tag->GalleryAlbums()->getIDList() as $id) {
                if (in_array($id, $ids)) {
                    return true;
                }
            }
            return false;
        });
    }

}

class Gallery_Controller extends ContentController {

    public function init() {
        parent::init();
    }

}
