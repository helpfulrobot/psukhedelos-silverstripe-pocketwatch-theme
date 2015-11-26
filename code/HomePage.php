<?php
class HomePage extends Page {

	private static $description = "The Pocketwatch Home Page";

	private static $has_one = array(
		'HeaderImage' => 'Image'
	);

	function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->addFieldToTab(
			'Root.Upload',
			$uploadField = new UploadField(
				'HeaderImage',
				'Please upload an image to display in your header.'
			)
		);

		$uploadField->setFolderName('Header');
		$uploadField->setAllowedFileCategories('image');

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
