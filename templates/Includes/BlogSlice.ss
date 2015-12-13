<div class="blog-slice container-fluid">
    <div class="container" >
        <div class="row">
            <div class="col-md-12 text-center">
                <h2>$Title</h2>
            </div>
        </div>
        <div class="row">
            <% loop $getBlogSlicePosts %>
                <div class="blog-slice-element col-md-4">
                        <div class="blog-slice-thumbnail">
                            <a href="$Link">
                                <% if $FeaturedImage %>
                                    $FeaturedImage
                                <% else %>
                                    <img src="pocket-watch/images/default-blog-icon.svg" alt="Default Image" />
                                <% end_if %>
                            </a>
                        </div>
                        <div class="blog-slice-text caption">
                            <h3 class="blog-slice-title">$Title</h3>
                            <p class="blog-slice-summary">$Content.Summary().LimitWordCount(20)</p>
                            <a class="blog-slice-link" href="$Link">read more</a>
                        </div>
                </div>
            <% end_loop %>
        </div>
        <div class="row">
            <div class="blog-slice-btn col-md-12 text-center">
                <a class="see-all" href="$Link">SEE ALL</a>
            </div>
        </div>
    </div>
</div>
