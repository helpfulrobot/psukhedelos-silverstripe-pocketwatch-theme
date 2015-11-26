<!DOCTYPE html>
<html lang="$ContentLocale">
 <% include Head %>

<body>
<div class="wrapper">
    <header class="hidden-xs hidden-sm">
        <div id="main-logo " class="main-wrapper">
            <div class="container">
                <div class="top-logo">
                    <% if $HeaderImage %>
                        <img class="main-logo img-responsive center-block" src="$HeaderImage.Url" />
                    <% end_if %>

                </div>
            </div>
        </div>
    </header>

    <div id="nav">
        <div class="navbar-wrapper main-nav">
            <div class=" ">
                <nav class="navbar  navbar-static-top">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed nav-collapsed"
                                data-toggle="collapse" data-target="#navbar"
                                aria-expanded="false" aria-controls="navbar">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <% if $HeaderImage %>
                            <img class="main-logo-in-mobile hidden-lg hidden-md img-responsive" src="$HeaderImage.Url" />
                        <% end_if %>
                    </div>
                    <div id="navbar" class="row navbar-collapse collapse nav-main-ul">


                        <ul class="nav navbar-nav">
                            <% control $Menu(1) %>
                                <% if $Children %>
                                    <li class="$LinkingMode dropdown ">
                                        <a href="$Link"  class="$LinkingMode " data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            $MenuTitle
                                        </a>
                                        <ul class="dropdown-menu" role="menu">
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

                </nav><!---navbar-end--->

            </div><!--container-end--->
        </div><!---nav-wrapper-end--->
    </div><!---main-nav-fixed-end--->

    <section class="parallax-1 top-section" >
        <div class="container about-in-home-section">
            <div class="about-text col-md-offset-3 col-md-6">
                <h1>$Title </h1>
                <p>
                   $Content

                </p>

            </div>
        </div>
    </section>

    <div class="content-wrapper">

    $Layout

    <% include Footer %>
    </div>

</div><!---main-wrapper-end--->

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <% require javascript("https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js") %>
    <% require javascript("pocket-watch/js/bootstrap.min.js") %>
    <% require javascript("pocket-watch/js/main.js") %>

</body>
</html>
