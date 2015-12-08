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

	public function AllPages(){
		return DataObject::get('SiteTree', 'ParentID = 0', 'Sort');
	}
	
}
