<% require themedCSS('blog', 'blog') %>

<div class="blog-entry content-container  container<% if $SideBarView %>unit size3of4<% end_if %>">

  <div class="container post-detail">
    <div class="col-lg-10 col-md-10 col-lg-offset-1 col-md-offset-1">

<article>

        <% if $FeaturedImage %>
            <img class="img-responsive post-detail-img post-image" alt="" src="$FeaturedImage.CroppedImage(920,574).Url">
        <% else %>
            <img class="img-responsive post-detail-img post-image" src="pocket-watch/images/default-blog-icon.svg" alt="Default Image" />
        <% end_if %>

  <div class="blog-detail-header">
      	<h3>$Title</h3>
  </div>
<div class ="clearfix">

<div class="post-detail-category pull-left">
  <% if $Categories.exists %>
  <% loop $Categories %>
  	<a href="$Link" title="$Title" class="btn-details ">$Title</a><% if not Last %>, <% else %>|<% end_if %>
  <% end_loop %>
  <% end_if %>

</div>

<div class="post-detail-tag  pull-left">
  <% if $Tags.exists %>
  <% loop $Tags %>
    <a href="$Link" title="$Title">$Title</a><% if not Last %>, <% else %>|<% end_if %>
  <% end_loop %>
  <% end_if %>
</div>

<div class="post-detail-time  pull-left">
  <a href="$MonthlyArchiveLink">$PublishDate.Format("d/m/Y")</a>
</div>
</div>


<div class="post-detail-content">
<div class="content">$Content</div>
</div>


</article>
<% if $Categories.exists %>
  <a class="btn btn-default btn-return-blog" href="$Parent.Link" title="$Title">RETURN TO BLOG</a>
<% end_if %>


  $Form
  $CommentsForm
</div>
</div>

</div>

<!-- <% include BlogSideBar %> -->
