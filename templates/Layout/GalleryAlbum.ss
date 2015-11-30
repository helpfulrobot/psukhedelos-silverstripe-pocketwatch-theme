<div class="container-fluid work-gallery-section">
    <div class="container">

    <!-- <div class="gallery-seperator container"></div> -->

    <div class="row gallery-child">
        <div class="controls">
          <a href="$Parent.Link" class="filter btn btn-default" data-filter="all">All</a>
          <% loop $Parent.ActiveGalleryTags %>
          <!-- Check if $Title is in $GalleryTags -->
            <a href="$Up.Link" class="filter btn btn-default" data-filter=".category-$Title">
              $Title.UpperCase
            </a>
          <% end_loop %>

        </div>
      <div class="container ">
          <div id="myCarousel" class="carousel slide" data-ride="carousel">

              <!-- Wrapper for slides -->
              <div class="carousel-inner" role="listbox">
                  <% loop GalleryItems %>
                      <% if $Pos == 1 %>
                          <div class="item active">

                              <img  class="img-responsive center-block" alt="540%x540"
                                    src=" $GalleryImage.CroppedImage(540,540).Url" >

                          </div>
                      <% else %>
                          <div class="item">
                            <img  class="img-responsive center-block" alt="540%x540"
                                  src=" $GalleryImage.CroppedImage(540,540).Url" >
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


          <div class="container">
              <h3>$Title</h3>
              <p>$Content</p>
          </div>

    </div>
    </div>


    </div>


</div>
