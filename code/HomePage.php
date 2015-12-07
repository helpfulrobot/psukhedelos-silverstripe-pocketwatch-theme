<?php
class HomePage extends Page {

	private static $description = "The Pocketwatch Home Page";

	private static $has_one = array(
		'HeaderImage' => 'Image',
		'HeroImage' => 'Image',
		'FooterLogo' => 'Image'
	);

	function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->addFieldToTab(
				'Root.Image Upload',
				$uploadHeroField = new UploadField(
						'HeroImage',
						'Please upload an image to be used as your Hero Image.  Remember, this is usually the first thing your visitors will see.'
				)
		);

		$uploadHeroField->setFolderName('Hero');
		$uploadHeroField->setAllowedFileCategories('image');

		return $fields;
	}
}
class HomePage_Controller extends ContentController {

		// You can include any CSS or JS required by your project here.
		// See: http://doc.silverstripe.org/framework/en/reference/requirements


	public function GalleryAlbums() {
		return GalleryAlbum::get()
				->sort('Sort', 'ASC')
				->limit(12);
	}

	public function AllPages(){
		return DataObject::get("SiteTree", "\"ParentID\" = 0");
	}




}
