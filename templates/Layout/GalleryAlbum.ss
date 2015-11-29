<div class="container-fluid work-gallery-section">
    <div class="container">

    <!-- <div class="gallery-seperator container"></div> -->

    <div class="row gallery-child">
        <div class="controls">
          <% control Parent %>
          <a href="$Link" class="filter btn btn-default" data-filter="all">All</a>
          <% control Children %>
          <a href="$Link" class="filter btn btn-default $LinkingMode" data-filter=".category-$Title">
            $Title.UpperCase
          </a>
          <% end_control %>
          <% end_control %>

        </div>
      <div class="container ">
          <div id="myCarousel" class="carousel slide" data-ride="carousel">

              <!-- Wrapper for slides -->
              <div class="carousel-inner" role="listbox">
                  <% loop GalleryItems %>
                      <% if $Pos == 1 %>
                          <div class="item active">

                              <img  class="img-responsive center-block" alt="540%x540"
                                    src=" $GalleryImage.SetSize(540,540).Url" >
                              <div class="container">
                                  <h3>Blog One Gallery Header</h3>
                                  <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec
                                      id elit non mi porta gravida at eget metus. Nullam id dolor id nibh
                                      ultricies vehicula ut id elit.
                                      Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec
                                      id elit non mi porta gravida at eget metus. Nullam id dolor id nibh
                                    ultricies vehicula ut id elit.
                                      Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec
                                      id elit non mi porta gravida at eget metus. Nullam id dolor id nibh
                                      ultricies vehicula ut id elit.
                                  </p>
                              </div>
                          </div>
                      <% else %>
                          <div class="item">
                            <img  class="img-responsive center-block" alt="540%x540"
                                  src=" $GalleryImage.SetSize(540,540).Url" >
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

    
    </div>


</div>





<%--<div class="row">--%>
    <%--<if $GalleryItems >--%>

    <%--</if>--%>
    <%--<img  class="img-responsive center-block" alt="450%x450"--%>
          <%--src=" $GalleryImage.SetSize(450,450).Url" >--%>
<%--</div>--%>
