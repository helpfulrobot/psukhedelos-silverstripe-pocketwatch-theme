<div class="container-fluid work-gallery-section">
    <div class="container">
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <% loop GalleryItems %>
                    <% if $Pos == 1 %>
                        <li data-target="#myCarousel" data-slide-to=$Pos class="active">
                    <% else %>
                        <li data-target="#myCarousel" data-slide-to=$Pos></li>
                    <% end_if %>
                <% end_loop %>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <% loop GalleryItems %>
                    <% if $Pos == 1 %>
                        <div class="item active">
                            $GalleryImage
                        </div>
                    <% else %>
                        <div class="item">
                            $GalleryImage
                        </div>
                    <% end_if %>
                <% end_loop %>
            </div>

            <!-- Left and right controls -->
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>

        <div class="gallery-text">
            <div class="gallery-title">
                $Title
            </div>
            <div class="gallery-desc">
                $Content
            </div>
        </div>
    </div>
</div>