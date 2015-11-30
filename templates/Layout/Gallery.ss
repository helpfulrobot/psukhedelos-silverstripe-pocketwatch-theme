<div class="work-gallery-section">
    <div class="container  gallery-top ">
          <div class="row gallery-child">

                <div class="controls ">
                      <a class="filter btn btn-default" data-filter="all">ALL</a>
                      <% loop $ActiveGalleryTags %>
                          <a class="filter btn btn-default btn-tags" data-filter=".category-$ID">
                            $Title.UpperCase</a>
                      <% end_loop %>
                </div>

                <div id="Container" class="col-md-10 col-md-offset-1 album-container">
                    <% loop $Children %>
                        <div class="mix <% loop $GalleryTags %>category-$ID <% end_loop %> col-md-4"
                           data-myorder="$Pos">


                           <div class="box ">
                             <a  href="$Link">
                             <img class="img-responsive  name"
                              alt="" src="$AlbumCover.CroppedImage(230,230).Url">
                             <div class="overbox">

                              <div class="title overtext"> $Title </div>

                             </div>
                           </a>
                        </div>


                      </div>

                    <% end_loop %>
                </div>

          </div>
    </div>
</div>
