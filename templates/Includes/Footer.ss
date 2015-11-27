<footer class="footer-section">
    <div class="container">
        <div class="footer">
            <div>

                <% if $HeaderImage %>
                    <img class=" img-responsive center-block" src="$HeaderImage.SetSize(120,120).Url" />
                <% else %>
                    <img class=" img-responsive center-block " src="./pocket-watch/images/logo.png" />
                <% end_if %>

            </div>

            <div class="footer-social">
                <ul class="nav nav-pills">
                        <li><a href="#" class="i fa fa-2x fa-facebook"></a></li>
                    <li><a href="#" class="i fa fa-2x fa-twitter"></a></li>
                    <li><a href="#" class="i fa fa-2x fa-google-plus"></a></li>
                    <li><a href="#" class="i fa fa-2x fa-youtube"></a></li>
                </ul>


            </div>
            <div>
                <p>silverstripe@silverstripe.com</p>

            </div>

        </div>

    </div>

</footer><!---contact-section-end--->

<ul class="nav pull-right scroll-top">
    <li><a href="#" title="Scroll to top"><i class="glyphicon glyphicon-chevron-up"></i></a></li>
</ul>