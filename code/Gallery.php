<?php
/**
 * Gallery
 * This holds all of our Gallery Albums.
 * @TODO: rename Gallery Holder
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
         * @TODO: Also currently these are not order
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

        Requirements::javascript("https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js");
        Requirements::javascript("pocket-watch/js/bootstrap.min.js");
        Requirements::javascript("pocket-watch/js/jquery.mixitup.min.js");
        Requirements::javascript("pocket-watch/js/call.mixitup.js");



    }

}
