<div class="container-fluid work-gallery-section">
    <div class="container">

    <div class="gallery-seperator container"></div>

    <div class="row gallery-child">
        <div class="controls">

            <button class="filter" data-filter="all">All</button>
            <button class="filter" data-filter=".category-1">Category 1</button>
            <button class="filter" data-filter=".category-2">Category 2</button>

        </div>
        <div class="container ">
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




    </div>
    </div>

    <div class="gallery-seperator container"></div>
    </div>


</div>





<%--<div class="row">--%>
    <%--<if $GalleryItems >--%>

    <%--</if>--%>
    <%--<img  class="img-responsive center-block" alt="450%x450"--%>
          <%--src=" $GalleryImage.SetSize(450,450).Url" >--%>
<%--</div>--%>

<%--<div class="container">--%>
    <%--<h2>Blog One</h2>--%>
    <%--<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec--%>
        <%--id elit non mi porta gravida at eget metus. Nullam id dolor id nibh--%>
        <%--ultricies vehicula ut id elit.--%>
        <%--Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec--%>
        <%--id elit non mi porta gravida at eget metus. Nullam id dolor id nibh--%>
        <%--ultricies vehicula ut id elit.--%>
        <%--Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec--%>
        <%--id elit non mi porta gravida at eget metus. Nullam id dolor id nibh--%>
        <%--ultricies vehicula ut id elit.--%>
    <%--</p>--%>
<%--</div>--%>