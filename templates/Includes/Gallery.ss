<div class="container-fluid work-gallery-section">
    <div class="container">
        <div class="container">
            <h2>WORK</h2>
        </div>
        <div class='row'>
            <div class='col-md-12'>
                <div class="carousel slide media-carousel " id="media">
                    <div class="carousel-inner">
                        <div class="item  active">
                            <div class="row">
                                <% loop $GalleryAlbums %>
                                    <div class="col-md-4 ">
                                    <a class="thumbnail " href="#">
                                        <img class="main-logo img-responsive center-block" src="$AlbumCover.Url" />
                                        <h4>$Title</h4>
                                        </a>
                                    </div>
                                <% end_loop %>
                                <%--<% loop $LatestGallery(3) %>--%>
                                    <%--<div class="col-md-4 ">--%>
                                        <%--<a class="thumbnail " href="#">--%>
                                            <%--<img class="main-logo img-responsive center-block" src="$GalleryImage.Url" />--%>
                                            <%--<h4>$Title</h4>--%>
                                        <%--</a>--%>

                                    <%--</div>--%>
                                <%--<% end_loop %>--%>


                            </div>
                        </div>
                        <%--<div class="item">--%>
                            <%--<div class="row">--%>
                                <%--<div class="col-md-4">--%>
                                    <%--<a class="thumbnail" href="#">--%>
                                        <%--<img alt="" src="http://placehold.it/350x150">--%>
                                        <%--<h4>Gallery Work</h4>--%>

                                    <%--</a>--%>
                                <%--</div>--%>
                                <%--<div class="col-md-4">--%>
                                    <%--<a class="thumbnail" href="#">--%>
                                        <%--<img alt="" src="http://placehold.it/350x150">--%>
                                        <%--<h4>Gallery Work</h4>--%>

                                    <%--</a>--%>
                                <%--</div>--%>
                                <%--<div class="col-md-4">--%>
                                    <%--<a class="thumbnail" href="#">--%>
                                        <%--<img class="img-responsive" alt="" src="http://placehold.it/350x150">--%>
                                        <%--<h4>Gallery Work</h4>--%>

                                    <%--</a>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>

                    </div>
                    <a data-slide="prev" href="#media" class="left carousel-control">‹</a>
                    <a data-slide="next" href="#media" class="right carousel-control">›</a>
                </div>
            </div>
        </div><!---desktop-version--->
        <%--<div class="row gallery-view-more hidden-lg hidden-md">--%>
            <%--<div class="span4 collapse-group">--%>
                <%--<div class="item  active">--%>
                    <%--<div class="row">--%>
                        <%--<div class="col-md-4 ">--%>
                            <%--<a class="thumbnail " href="#">--%>
                                <%--<img class="img-responsive" alt="" src="http://placehold.it/350x150">--%>
                                <%--<h4>Gallery Work</h4>--%>

                            <%--</a>--%>

                        <%--</div>--%>
                        <%--<div class="col-md-4">--%>
                            <%--<a class="thumbnail" href="#">--%>
                                <%--<img class="img-responsive" alt="" src="http://placehold.it/350x150">--%>
                                <%--<h4>Gallery Work</h4>--%>

                            <%--</a>--%>
                        <%--</div>--%>
                        <%--<div class="col-md-4">--%>
                            <%--<a class="thumbnail" href="#">--%>
                                <%--<img class="img-responsive" alt="" src="http://placehold.it/350x150">--%>
                                <%--<h4>Gallery Work</h4>--%>

                            <%--</a>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<div class="collapse">--%>
                    <%--<div class="item  active">--%>
                        <%--<div class="row">--%>
                            <%--<div class="col-md-4 ">--%>
                                <%--<a class="thumbnail " href="#">--%>
                                    <%--<img class="img-responsive" alt="" src="http://placehold.it/350x150">--%>
                                    <%--<h4>Gallery Work</h4>--%>

                                <%--</a>--%>

                            <%--</div>--%>
                            <%--<div class="col-md-4">--%>
                                <%--<a class="thumbnail" href="#">--%>
                                    <%--<img class="img-responsive" alt="" src="http://placehold.it/350x150">--%>
                                    <%--<h4>Gallery Work</h4>--%>

                                <%--</a>--%>
                            <%--</div>--%>
                            <%--<div class="col-md-4">--%>
                                <%--<a class="thumbnail" href="#">--%>
                                    <%--<img class="img-responsive" alt="" src="http://placehold.it/350x150">--%>
                                    <%--<h4>Gallery Work</h4>--%>

                                <%--</a>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<div>--%>
                    <%--<button class="btn view-more" href="#">View More <span class="fa fa-2x fa-angle-double-down">--%>
          <%--</span></button>--%>

                <%--</div>--%>
            <%--</div>--%>
        <%--</div><!---mobile-version--->--%>
    </div>
</div><!---work-section-end--->
