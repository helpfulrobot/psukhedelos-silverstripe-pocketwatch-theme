<div class ="contact-page-section">
<div class="container contact-container">
<div class="row contact-row">

    <div class="col-md-6 contact-detail clearfix">
        <div class=" pull-right">
            <div class="map"> </div>
            <div class="address">
            <% if $SiteConfig.Address %>
                <p class="first-address"><i class="fa fa-map-marker"></i>$SiteConfig.Address</p>
            <% end_if %>
            <% if $SiteConfig.Phone %>
                <p><i class="fa fa-phone"></i></i>$SiteConfig.Phone</p>
            <% end_if %>
            <% if $SiteConfig.Email %>
                <p><i class="fa fa-envelope"></i>$SiteConfig.Email</p>
            <% end_if %>
            </div>
        </div>

      </div>

        <div class="col-md-6 ">
        <div class="col-md-10">

                <h2 class="form-header">SEND A MESSAGE</h2>
                $Form
          

        </div>
      </div>

</div>
</div>
</div>
