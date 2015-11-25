<?php
class HomePage extends Page {

  private static $description = "The Pocketwatch Home Page";

  private static $can_be_root = true;

	private static $db = array(
	);

	private static $has_one = array(
    'HeaderImage' => 'Image'
	);

  function getCMSFields() {
    $fields = parent::getCMSFields();

    $fields->addFieldToTab(
        'Root.Upload',
        $uploadField = new UploadField(
            $name = 'HeaderImage',
            $title = 'Please upload an image to display in your header.')
    );

    $uploadField->setFolderName('Header');
    $uploadField->setAllowedFileCategories('image');


    return $fields;
  }

}
class HomePage_Controller extends ContentController {

	/**
	 * An array of actions that can be accessed via a request. Each array element should be an action name, and the
	 * permissions or conditions required to allow the user to access it.
	 *
	 * <code>
	 * array (
	 *     'action', // anyone can access this action
	 *     'action' => true, // same as above
	 *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
	 *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
	 * );
	 * </code>
	 *
	 * @var array
	 */
	private static $allowed_actions = array (
	);
	public function LatestGallery() {
		
		return GalleryObject::get()
				->sort('SortOrder', 'ASC')
				->limit(3);
	}

}
