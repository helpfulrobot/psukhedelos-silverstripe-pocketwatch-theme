<?php
/**
 * A Tag for categorising Galleries
 **/
class GalleryTag extends DataObject {

    private static $db = array(
        'Title' => 'Varchar(255)',
    );

    private static $belongs_many_many = array(
        'GalleryAlbums' => 'GalleryAlbum',
    );


    public function getCMSFields()
    {
        $fields = new FieldList(
            TextField::create('Title', _t('GalleryTag.Title', 'Title'))
        );

        $this->extend('updateCMSFields', $fields);

        return $fields;
    }

}