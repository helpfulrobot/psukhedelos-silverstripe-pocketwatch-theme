<footer class="footer-section container-fluid">
  <div class="container ">

    <div class="row  footer-line">
        <div class="footer ">
            <div>

            <% if $HeaderImage %>
                <img class="img-responsive center-block" src="$HeaderImage.CroppedImage(82,47).Url" />
            <% else %>
                <img class="img-responsive center-block " src="./pocket-watch/images/logo.png" />
            <% end_if %>
            </div>

            <div class="footer-social">
                <ul class="social-ul">
                    <li><a href="#" class="social-icon fa fa-2x fa-facebook"></a></li>
                    <li><a href="#" class="social-icon fa  fa-2x fa-twitter"></a></li>
                    <li><a href="#" class="social-icon fa fa-2x fa-google-plus"></a></li>
                    <li><a href="#" class="social-icon fa  fa-2x fa-rss"></a></li>
                </ul>
            </div>
            <div class="footer-email">
                <div class="email-address">jess@silverstripe.com</div>
            </div>

        </div>

        <div class="footer-divider"> </div>
    </div>
    <div class="footer-copyright">
      &copy;2015 POCKETWATCH, all right reserved
    </div>
  </div>

</footer><!---contact-section-end--->

<ul class="nav pull-right scroll-top">
    <li><a href="#" title="Scroll to top"><i class="glyphicon glyphicon-chevron-up"></i></a></li>
</ul>
