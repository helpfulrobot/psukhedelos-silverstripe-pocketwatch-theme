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

        $featurePost = DataObject::get(
            'BlogPost',
            'FeaturedPost = 1',
            'PublishDate DESC'
        )   ->first();

        if($featurePost){
            $otherPosts = DataObject::get(
                'BlogPost',
                'BlogPost.ID != '.$featurePost->ID,
                'PublishDate DESC'
            )->limit(2);

//            $otherPosts->limit(3);
//            $otherPosts->add($featurePost);
//            array_unshift($otherPosts , $featurePost);
//            var_dump($otherPosts);
//            die();

        }else{
            $otherPosts = DataObject::get(
                'BlogPost',
                '',
                'PublishDate DESC'
            )->limit(3);
        }



//        var_dump($otherPosts);
//        die();
        return $otherPosts;
    }
}