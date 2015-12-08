<div class ="contact-page-section">
<div class="container contact-container">
<div class="row contact-row">

    <div class="col-md-6  content-form ">
    <div class="col-md-10">
        <h2 class="form-header">SEND A MESSAGE</h2>
        <div class="">
            $Content
        </div>
    </div>
  </div>

    <div class="col-md-6 contact-detail ">
        <div class="col-md-offset-1 col-md-10 contact-map ">
            <div class="map" style="background-image: url($ContactImage.Url)"> </div>
            <div class="address">

                <% if $SiteConfig.Address %>
                    <div class="row">
                        <div class="col-xs-1">
                            <p class="first-address"><i class="fa fa-map-marker"></i></p>
                        </div>
                        <div class="col-xs-11 pull-left">
                            <p class="first-address">$SiteConfig.Address</p>
                        </div>
                    </div>
                <% end_if %>

                <% if $SiteConfig.Phone %>
                    <div class="row">
                        <div class="col-xs-1">
                            <p><i class="fa fa-phone"></i></i></p>
                        </div>
                        <div class="col-xs-11 pull-left">
                            <p>$SiteConfig.Phone</p>
                        </div>
                    </div>
                <% end_if %>

                <% if $SiteConfig.Email %>
                    <div class="row">
                        <div class="col-xs-1">
                            <p><i class="fa fa-envelope"></i></p>
                        </div>
                        <div class="col-xs-11 pull-left">
                            <p>$SiteConfig.Email</p>
                        </div>
                    </div>
                <% end_if %>
            </div>
        </div>

      </div>


</div>
</div>
</div>
