<div class="map-slice-section" style="background-image: url($BackgroundImage.Url)" >
  <div class="container">
      <div class="row">
          <div class="col-md-12 text-center">
              <h2>$Title</h2>
          </div>
      </div>
      <div class="row">
          <div class="col-sm-10 col-sm-offset-1 text-center text-slice-section-text-area">
              $Content
              <iframe
                  width="600"
                  height="450"
                  frameborder="0" style="border:0"
                  src="https://www.google.com/maps/embed/v1/directions
                  ?key=$GoogleMapsAPIKey
                  &origin=Oslo+Norway
                  &destination=Telemark+Norway" allowfullscreen>
              </iframe>
          </div>
      </div>
  </div>
</div>
