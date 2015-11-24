<!DOCTYPE html>
<html lang="$ContentLocale">
<head>
    <% base_tag %>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <%--$MetaTags(false)--%>
    <title>Pocket - Watch</title>

    <!-- Bootstrap -->
    <% require css('pocket-watch/css/bootstrap.min.css') %>
    <%--<% require themedCSS("bootstrap.min") %>--%>
    <!--- Custom -->
    <% require css('pocket-watch/css/main.css') %>
    <% require css('pocket-watch/css/responsive.css') %>

    <!-- font-awesome -->
    <%--<% require css("https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css") %>--%>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">


    <%--<link href="$ThemeDir/css/main.css" rel="stylesheet"/>--%>
    <%--<link href="$ThemeDir/css/responsive.css" rel="stylesheet"/>--%>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
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
            <div class="container ">
                <nav class="navbar  navbar-static-top ">

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
                    <div id="navbar" class="navbar-collapse collapse ">
                        <ul class="nav navbar-nav nav-ul col-xs-12">
                            <% loop $Menu(1) %>
                                <li class="$LinkingMode"><a href="$Link" title="$Title.XML">$MenuTitle.XML</a></li>
                            <% end_loop %>

                        </ul>

                    </div>

                </nav><!---navbar-end--->

            </div><!--container-end--->
        </div><!---nav-wrapper-end--->
    </div><!---main-nav-fixed-end--->

    <section class="parallax-1 top-section" >
        <div class="container about-in-home-section">
            <div class="about-text col-md-offset-3 col-md-6">
                <h1>POCKET WATCH ...</h1>
                <p>
                    Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                    Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
                    when an unknown printer took a galley of type and scrambled it to make a type
                    specimen book.

                </p>

            </div>
        </div>
    </section>

    <div class="content-wrapper">

        $Layout

    </div>
</div>  <!---main-wrapper-end--->

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <% require javascript("https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js") %>
    <% require javascript("pocket-watch/js/bootstrap.min.js") %>
    <% require javascript("pocket-watch/js/main.js") %>
    <%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>--%>
    <%--<!-- Include all compiled plugins (below), or include individual files as needed -->--%>
    <%--<script src="$ThemeDir/js/bootstrap.min.js"></script>--%>

    <%--<script src="$ThemeDir/js/main.js"></script>--%>
</body>
</html>
