<?php

class BlogExtension extends DataExtension {

    private static $db = array(
        'FeaturedPosts' => 'Boolean'
    );

    public function updateSettingsFields(FieldList $fields) {
            $fields->addFieldToTab(
                'Root.Settings',
                FieldGroup::create(
                    CheckboxField::create('FeaturedPosts','Show Featured Posts?')
                )->setTitle('Featured Posts')->setName('FeaturedPostsOptions')
            );
    }

    public function getCategory(){
        $params = Controller::curr()->getURLParams();

        if (isset($params["Category"])) {
            return $params["Category"];
        }

        return null;
    }

    public function getTag(){
        $params = Controller::curr()->getURLParams();

        if (isset($params["Tag"])) {
            return $params["Tag"];
        }

        return null;
    }

    public function getArchive(){
        $params = Controller::curr()->getURLParams();

        if (isset($params["Year"])) {

            $archive = Array(
                "Year" => $params["Year"],
                "Month" => $params["Month"],
                "Day" => $params ["Day"]
            );

            return $archive;
        }

        return null;
    }

    public function getFeaturedBlogPost(){
        $category = $this->getCategory();
        $tag = $this->getTag();
        $archive = $this->getArchive();

        if ($category) {
            $category = BlogCategory::get()->filter("URLSegment", $category)->first();

            return $category->BlogPosts()->filter("FeaturedPost", true)->first();
        }

        if ($tag) {
            $tag = BlogTag::get()->filter("URLSegment", $tag)->first();

            return $tag->BlogPosts()->filter("FeaturedPost", true)->first();
        }

        if ($archive) {
            return $this->owner->getArchivedBlogPosts($archive["Year"], $archive["Month"], $archive ["Day"])->filter("FeaturedPost", true)->first();
        }

        return BlogPost::get()->filter("FeaturedPost", true)->first();
    }

    public function getBlogSlicePosts(){

        if($this->owner->FeaturedPosts && $this->getFeaturedBlogPost()){
            $featured = $this->getFeaturedBlogPost();
            $others = BlogPost::get()->exclude('ID',$featured->ID)->limit(2)->sort('PublishDate','DESC');
            $posts = ArrayList::create();
            $posts->push($featured);
            foreach($others as $item){
                $posts->push($item);
            }

            return $posts;
        }

        return BlogPost::get()->limit(3)->sort('PublishDate','DESC');

    }


}