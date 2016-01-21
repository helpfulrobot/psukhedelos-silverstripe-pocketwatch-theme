<div class="text-slice-section" style="background-image: url($BackgroundImage.Url)" >
  <div class="container">
      <div class="row">
          <div class="col-md-12 text-center">
              <h2>$Title</h2>
          </div>
      </div>
      <div class="row">
          <div class="col-sm-10 col-sm-offset-1 text-center text-slice-section-text-area">
              $Content
              <iframe width="840" height="616" src="https://www.youtube.com/embed/$VideoURL?autoplay=1" frameborder="0" allowfullscreen></iframe>
              <%if $VideoURL2 %>
                <iframe width="420" height="315" src="https://www.youtube.com/embed/$VideoURL2?autoplay=1" frameborder="0" allowfullscreen></iframe>
              <% end_if %>
          </div>
      </div>
  </div>
</div>