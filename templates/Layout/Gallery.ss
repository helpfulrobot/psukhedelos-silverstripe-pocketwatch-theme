<div class="work-gallery-section">
    <div class="container  gallery-top ">
        <div class="gallery-seperator container"></div>

        <div class="controls">

            <button class="filter" data-filter="all">All</button>
            <% loop $ActiveGalleryTags %>
                <button class="filter" data-filter=".category-$Title">$Title</button>
            <% end_loop %>

        </div>


        <div id="Container" class="container album-container">
            <% loop $Children %>
                <div class="mix <% loop $GalleryTags %>category-$Title <% end_loop %> col-md-4" data-myorder="$Pos">
                    <div class="col-md-10">
                        <a class="thumbnail box" href="$Link">
                            <% if $AlbumCover %>
                                <img class="img-responsive name" alt="" src="$AlbumCover.Url">
                            <% else %>
                                [No Content]
                            <% end_if %>
                            <div id="overlay">
                                <h2>$Title</h2>
                            </div>
                        </a>
                    </div>
                </div>
            <% end_loop %>
        </div>

    </div>
</div>