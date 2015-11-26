<div class="container-fluid work-gallery-section">
    <div class="container">

    <div class="gallery-seperator container"></div>

    <div class="row gallery-child">
        <div class="controls">

            <button class="filter" data-filter="all">All</button>
            <button class="filter" data-filter=".category-1">Category 1</button>
            <button class="filter" data-filter=".category-2">Category 2</button>

        </div>
        <div class="container ">
            <div class="row">
                <% if $GalleryItems %>
                    <img  class="img-responsive center-block" alt="450%x450"
                          src=" $GalleryImage.SetSize(450,450).Url">
                <% end_if %>

            </div>

            <div class="container">
                <h2>Blog One</h2>
                <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec
                    id elit non mi porta gravida at eget metus. Nullam id dolor id nibh
                    ultricies vehicula ut id elit.
                    Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec
                    id elit non mi porta gravida at eget metus. Nullam id dolor id nibh
                    ultricies vehicula ut id elit.
                    Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec
                    id elit non mi porta gravida at eget metus. Nullam id dolor id nibh
                    ultricies vehicula ut id elit.
                </p>
            </div>
        </div>
    </div>

    <div class="gallery-seperator container"></div>
    </div>


</div>

