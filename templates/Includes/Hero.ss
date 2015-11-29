<div class="container-fluid top-section" >
    <div class=" about-in-home-section">
      <div class="about-img">
        <% if $HeroImage %>

        <img src="$HeroImage.Url" alt=""/>
        <% else %>
        <img src="./pocket-watch/images/Three.jpeg"/>
        <% end_if %>

      </div>

        <div class="about-text col-md-offset-3 col-md-6">
            <p>
                $Content
            </p>

        </div>
    </div>
</div>
