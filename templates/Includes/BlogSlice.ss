
<section class="blog-slice container-fluid">
    <div class="row ">
        <div class="blog container" >
            <div class="row">
                <h2>$Title</h2>

                <% loop $getBlogSlicePosts %>
                    <div class="col-sm-6 col-md-4">
                        <div class="thumbnail">
                            <a href="$Link">
                                <% if $FeaturedImage %>
                                    $FeaturedImage
                                <% else %>
                                    <img src="pocket-watch/images/default-blog-icon.svg" alt="Default Image" />
                                <% end_if %>
                            </a>
                            <div class="blog-slice-post caption">
                                <h3 class="blog-slice-title">$Title</h3>
                                <p >$Content.Summary().LimitWordCount(20)</p>
                                <a href="$Link">read more</a>
                            </div>
                        </div>
                    </div>
                <% end_loop %>
            </div>
            <div class="row">
                <div class="col-md-12 text-center">
                    <a href="$Link" class="btn btn-default">See All</a>
                </div>
            </div>

        </div>
    </div>
</section>
