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

    public function getFeaturedBlogPost(){
        $category = $this->getCategory();

        if ($category) {
            $category = BlogCategory::get()->filter("URLSegment", $category)->first();

            return $category->BlogPosts()->filter("FeaturedPost", true)->first();
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