<!DOCTYPE html>
<html lang="$ContentLocale">
    <% include Head %>
    <body id="body_wrapper">

        <% include Header %>
        <% include Navigation %>

        <div class="container-fluid content-wrapper">
            <div class="row">
                $Layout
            </div>
        </div>

        <% include Footer %>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <% require javascript("https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js") %>
        <% require javascript("pocket-watch/js/bootstrap.min.js") %>
        <% require javascript("pocket-watch/js/main.js") %>

    </body>
</html>
