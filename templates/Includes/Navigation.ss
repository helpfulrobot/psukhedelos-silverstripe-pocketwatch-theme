<div id="nav" class="navbar-wrapper main-nav  navbar-static-top toggle-shadow">
    <nav id="nav" class="navbar ">
        <div class="container">
            <div class="navbar-header row">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                        data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <% if $HeaderImage %>
                    <a href="home">
                        <img class="main-logo-in-mobile hidden-lg hidden-md img-responsive" src="$HeaderImage.Url" />
                    </a>
                <% else %>
                    <a href="home">
                        <img class=" main-logo-in-mobile hidden-lg hidden-md img-responsive"
                             src="./pocket-watch/images/logo.png" />
                    </a>
                <% end_if %>
            </div>
            <div id="navbar" class="navbar-collapse collapse  tb-navbar-right nav-bottom-border">
                <div class="row nav-header-shadow">
                    <ul id="main-nav" class="nav navbar-nav">
                        <%--<!-- <% cached 'Menu', $List('SiteTree').max('LastEdited') %> -->--%>
                        <% control $Menu(1) %>
                            <% if $Children %>
                                <li class=" mobile-mainnav  dropdown">
                                    <a href="$Link"  class="" data-toggle="dropdown"
                                       aria-haspopup="true" aria-expanded="false">
                                        $MenuTitle
                                    </a>
                                    <ul class="container-fluid dropdown-menu" role="menu">
                                        <li class="mobile-dropdown"><a href="$Link" class="dropdown-link" >$MenuTitle</a></li>
                                        <% control $Children %>
                                            <li class="mobile-dropdown"><a href="$Link" class="dropdown-link" >$MenuTitle</a></li>
                                        <% end_control %>
                                    </ul>
                                </li>
                            <% else %>
                                <li class="mobile-mainnav"><a href="$Link" class="">$MenuTitle.UpperCase</a></li>
                            <% end_if %>
                        <% end_control %>
                        <%--<!-- <% end_cached %> -->--%>
                    </ul>
                </div>
            </div>
        </div>
    </nav>
</div>