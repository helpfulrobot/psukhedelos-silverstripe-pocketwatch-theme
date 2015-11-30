<div class="work-gallery-section">
    <div class="container  gallery-top ">

      <div class="row gallery-child">

        <div class="controls ">
          <a class="filter btn btn-default" data-filter="all">All</a>
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
                      alt="" src="$AlbumCover.SetWidth(220).Url">
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
<!--
<div class="col-md-offset-2 ">
    <a class="box" href="$Link">
      <div class="box-img">
        <img class="img-responsive  name"
         alt="" src="$AlbumCover.Url">
      </div>

    </a>
</div> -->
