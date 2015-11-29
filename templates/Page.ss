<!DOCTYPE html>
<html lang="$ContentLocale">
<% include Head %>
<body id="body_wrapper">

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

  <div id="nav" class="navbar-wrapper main-nav  navbar-static-top">
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
                        <a href="/home">
                        <img class=" main-logo-in-mobile hidden-lg hidden-md img-responsive"
                         src="./pocket-watch/images/logo.png" />
                       </a>
                    <% end_if %>
                </div>
                <div id="navbar" class="navbar-collapse collapse ">
                    <div class="row nav-header-shadow">
                        <ul class="nav navbar-nav ">
                            <% cached 'Menu', $List('SiteTree').max('LastEdited') %>
                            <% control $Menu(1) %>
                                <% if $Children %>
                                    <li class="$LinkingMode dropdown ">
                                        <a href="$Link"  class="$LinkingMode " data-toggle="dropdown"
                                           aria-haspopup="true" aria-expanded="false">
                                            $MenuTitle.UpperCase
                                        </a>
                                        <ul class="container-fluid dropdown-menu" role="menu">
                                            <li class="$LinkingMode"><a href="$Link" >$MenuTitle.UpperCase</a></li>
                                            <% control $Children %>
                                                <li><a href="$Link"  class="$LinkingMode ">$MenuTitle.UpperCase</a></li>
                                            <% end_control %>
                                        </ul>
                                    </li>
                                <% else %>
                                    <li class="$LinkingMode $MenuTitle"><a href="$Link" >$MenuTitle.UpperCase</a></li>
                                <% end_if %>
                            <% end_control %>
                        <% end_cached %>
                        </ul>
                    </div>
                </div>
            </div>
        </nav>
  </div>

    <div class="container-fluid content-wrapper">

    <div class="row">
    $Layout
    </div>
    </div>



    <% include Footer %>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <% require javascript("https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js") %>
    <% require javascript("pocket-watch/js/bootstrap.min.js") %>
    <% require javascript("pocket-watch/js/jquery.mixitup.min.js") %>
    <% require javascript("pocket-watch/js/main.js") %>

</body>
</html>
