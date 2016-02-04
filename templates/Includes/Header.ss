<header class="masthead hidden-xs hidden-sm ">
    <div id=" ">
        <div class="container">
            <div class="top-logo">
                <% if $SiteConfig.HeaderImage %>
                    <a href="home">
                        <img class="main-logo img-responsive center-block"
                             src="$SiteConfig.HeaderImage.Url" />
                    </a>
                <% else %>
                    <a href="home">
                        <img class=" main-logo img-responsive center-block fall-back-logo"
                             src="$ThemeDir/images/logo.png" />
                    </a>
                <% end_if %>

            </div>
        </div>
    </div>
</header>