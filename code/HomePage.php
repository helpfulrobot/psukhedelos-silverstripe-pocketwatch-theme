<?php
class HomePage extends Page {

	private static $description = "The Pocketwatch Home Page";

	private static $has_one = array(
		'HeaderImage' => 'Image',
		'HeroImage' => 'Image'
	);

	function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->addFieldToTab(
			'Root.Upload',
			$uploadHeaderField = new UploadField(
				'HeaderImage',
				'Please upload the logo you would like to display in your header.'
			)
		);

		$uploadHeaderField->setFolderName('Header');
		$uploadHeaderField->setAllowedFileCategories('image');

		$fields->addFieldToTab(
				'Root.Upload',
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

	 public function LatestGallery() {
	 	return GalleryItem::get()
	 			->sort('SortID', 'ASC')
	 			->limit(3);
	 }

}
