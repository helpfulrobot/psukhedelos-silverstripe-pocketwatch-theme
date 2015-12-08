
<div class="container-fluid  blog-section">
    <div class="row ">
        <div class="blog container" >
            <div class="row">
                <h2>$Title</h2>
                <% loop $BlogPosts.Limit(3) %>

                    <div class="col-sm-6 col-md-4">
                        <div class="thumbnail">
                            <a href="$Link"><img data-src="$FeaturedImage.Url" alt="$Title" src="$FeaturedImage.Url" data-holder-rendered="true" style="height: 200px; width: 100%; display: block;"></a>
                            <div class="caption">
                                <h4>$Title</h4>
                                $Content.Summary()
                            </div>
                        </div>
                    </div>

                <% end_loop %>
            </div>
        </div>
    </div>

</div><!---blog-section-end--->