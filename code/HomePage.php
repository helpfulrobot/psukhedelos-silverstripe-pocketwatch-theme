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

		$fields->addFieldToTab(
				'Root.Upload',
				$uploadHeroField = new UploadField(
						'FooterLogo',
						'Please upload an image to be used as your Footer Logo Image.'
				)
		);

		$uploadHeroField->setFolderName('Footer');
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




}
