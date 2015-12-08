<div class="post-summary col-lg-4 col-md-4 col-sm-6 clearfix ">


<p class="post-image">
	<a href="$Link" <%t Blog.ReadMoreAbout "Read more about '{title}'..." title=$Title %>>
		$FeaturedImage.CroppedImage(795,500)
	</a>
</p>

<h2>
	<a href="$Link" title="<%t Blog.ReadMoreAbout "Read more about '{title}'..." title=$Title %>">
		<% if $MenuTitle %>$MenuTitle
		<% else %>$Title<% end_if %>
	</a>
</h2>

	<div class="post-tag">
		<% if $Tags.exists %>
			<% loop $Tags %>
				<a href="$Link" title="$Title" >$Title</a><% if not Last %>, <% else %>	<% end_if %>
			<% end_loop %>
		<% end_if %>
	</div>

<div class="post-time">
	<a href="$MonthlyArchiveLink">$PublishDate.Format("d/m/Y")</a>
</div>

	<% if $Summary %>
		<p>$Summary
	<% else %>
		<p>$Excerpt
	<% end_if %>

		</p>


</div>
