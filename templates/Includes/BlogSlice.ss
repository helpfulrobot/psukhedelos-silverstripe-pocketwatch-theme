
<div class="container-fluid  blog-section">
    <div class="row ">
        <div class="blog container" >
            <div class="row">
                <h2>Blog</h2>
                <% loop $BlogPosts %>

                    <div class="col-sm-6 col-md-4">
                        <div class="thumbnail">
                            <a href="$Link"><img data-src="$FeaturedImage.Url" alt="100%x200" src="$FeaturedImage.Url" data-holder-rendered="true" style="height: 200px; width: 100%; display: block;"></a>
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