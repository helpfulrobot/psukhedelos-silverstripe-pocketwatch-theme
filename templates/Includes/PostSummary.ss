<div class="post-summary col-lg-4 col-md-4 col-sm-6 clearfix ">

<p class="post-image">
	<a href="$Link" <%t Blog.ReadMoreAbout "Read more about '{title}'..." title=$Title %>>
		<% if $FeaturedImage %>
			$FeaturedImage.CroppedImage(305,165)
		<% else %>
            <img src="pocket-watch/images/default-blog-icon.svg" alt="Default Image" />
		<% end_if %>
	</a>
</p>

<h3>
	<a href="$Link" title="<%t Blog.ReadMoreAbout "Read more about '{title}'..." title=$Title %>">
		<% if $MenuTitle %>$MenuTitle
		<% else %>$Title<% end_if %>
	</a>
</h3>


<div class="post-detail-category" >
  <% if $Categories.exists %>
  <% loop $Categories %>
  	<a href="$Link" title="$Title" class="btn-details ">$Title</a><% if not $Last %>, <% end_if %>
  <% end_loop %>
  <% end_if %>
</div>

<div class="post-detail-tag" >
  <% if $Tags.exists %>
  <% loop $Tags %>
    <a href="$Link" title="$Title">$Title</a><% if not Last %>, <% end_if %>
  <% end_loop %>
  <% end_if %>
</div>

<div class="post-time" >
	<a href="$MonthlyArchiveLink">$PublishDate.Format("d/m/Y")</a>
</div>

	<% if $Summary %>
		<p>$Summary
	<% else %>
		<p>$Excerpt
	<% end_if %>

		</p>


</div>
