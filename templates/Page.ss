<!DOCTYPE html>
<html lang="$ContentLocale">
 <% include Head %>

<body id="body_wrapper">
    <header class="masthead hidden-xs hidden-sm ">
        <div id=" " >
            <div class="container">
                <div class="top-logo">
                    <% if $HeaderImage %>
                        <img class=" img-responsive center-block" src="$HeaderImage.SetSize(160,160).Url" />
                    <% end_if %>

                </div>
            </div>
        </div>
    </header>

    <div id="nav" class="navbar-wrapper main-nav  navbar-static-top">
        <nav id="nav" class="navbar ">
            <div class="container">

                    <div class="navbar-header ">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                                data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <% if $HeaderImage %>
                            <img class="main-logo-in-mobile hidden-lg hidden-md img-responsive" src="$HeaderImage.Url" />
                        <% end_if %>
                    </div>
                    <div id="navbar" class="navbar-collapse collapse ">
                        <div class="row">
                            <ul class="nav navbar-nav">

                                <% control $Menu(1) %>
                                    <% if $Children %>
                                        <li class="$LinkingMode dropdown ">
                                            <a href="$Link"  class="$LinkingMode " data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                $MenuTitle
                                            </a>
                                            <ul class="container-fluid dropdown-menu" role="menu">
                                                <li class="$LinkingMode"><a href="$Link" ><b>$MenuTitle</b></a></li>
                                                <% control $Children %>
                                                    <li><a href="$Link"  class="$LinkingMode ">$MenuTitle</a></li>
                                                <% end_control %>
                                            </ul>
                                        </li>
                                    <% else %>
                                        <li class="$LinkingMode"><a href="$Link" title="$Title"><b>$MenuTitle</b></a></li>
                                    <% end_if %>
                                <% end_control %>
                            </ul>
                        </div>
                    </div>
            </div>
        </nav>
    </div>


    <div class="container-fluid">
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
