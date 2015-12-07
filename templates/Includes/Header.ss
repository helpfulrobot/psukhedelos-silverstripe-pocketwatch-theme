<header class="masthead hidden-xs hidden-sm ">
    <div id=" ">
        <div class="container">
            <div class="top-logo">
                <% if $HeaderImage %>
                    <a href="home">
                        <img class="main-logo img-responsive center-block"
                             src="$HeaderImage.Url" />
                    </a>
                <% else %>
                    <a href="home">
                        <img class=" main-logo img-responsive center-block fall-back-logo"
                             src="./pocket-watch/images/logo.png" />
                    </a>
                <% end_if %>

            </div>
        </div>
    </div>
</header>