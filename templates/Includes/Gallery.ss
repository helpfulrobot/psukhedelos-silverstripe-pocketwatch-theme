<div class="container-fluid work-gallery-section">
    <div class="container">

        <div class="container">
            <!-- This is not the proper title, we want to know the gallery's name it refers to-->
            <h2>Gallery</h2>
        </div>

        <div class='row'>
            <div class='col-md-12'>
                <div class="carousel slide media-carousel" id="media" data-ride="carousel">
                    <div class="carousel-inner">

                        <% loop $GalleryAlbums %>  

                            <% if $First %> 
                                <div class="item active"><div class="row"> 
                            <% else_if $MultipleOf(3,3)%>  <!--Ask Paul, not sure I entirely understand what I've done here... -->
                                <div class="item"><div class="row"> 
                            <% end_if %>  

                            <div class="col-md-4 "> 
                                <a class="thumbnail " href="$Link"> <img class="main-logo img-responsive center-block" src="$AlbumCover.Url" /> 
                                    <h4>$Title</h4> 
                                </a> 
                            </div>     

                            <% if $MultipleOf(3) %> 
                                </div></div> 
                            <% end_if %>  

                        <% end_loop %>

                    </div>

                    <a data-slide="prev" href="#media" class="left carousel-control">‹</a>
                    <a data-slide="next" href="#media" class="right carousel-control">›</a>

                </div>
            </div>
        </div>

    </div>
</div><!---gallery-section-end--->
