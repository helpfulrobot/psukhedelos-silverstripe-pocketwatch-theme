
<section class="blog-slice container-fluid">
    <div class="row ">
        <div class="blog container" >
            <div class="row">
                <h2>$Title</h2>
                <% loop $BlogPosts.Limit(3) %>
                    <div class="col-sm-6 col-md-4">
                        <div class="thumbnail">
                            <a href="$Link"><img data-src="$FeaturedImage.Url" alt="$Title" src="$FeaturedImage.Url" data-holder-rendered="true" style="height: 200px; width: 100%; display: block;"></a>
                            <div class="blog-slice-post caption">
                                <h3 class="blog-slice-title">$Title</h3>
                                <p >$Content.Summary()</p>
                                <a href="$Link">read more</a>
                            </div>
                        </div>
                    </div>

                <% end_loop %>
            </div>
        </div>
    </div>
</section>
