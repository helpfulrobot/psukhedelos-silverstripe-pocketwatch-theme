<header class="">
    <div id="main-logo " class="main-wrapper">
        <div class="container">
            <div class="top-logo">

                <% if $HeaderImage %>
                    <img class="main-logo img-responsive center-block" src="$HeaderImage.Url" />
                <% else %>
                    <img class="main-logo img-responsive center-block fall-back-logo" src="pocket-watch/images/logo.png" />
                <% end_if %>



            </div>
        </div>
    </div>
</header>