<div class="post-summary col-lg-4 col-md-4 clearfix ">


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
		$CurrentTag.Title
	</h2>


	<% if $Summary %>
		<p>$Summary
	<% else %>
		<p>$Excerpt
	<% end_if %>
			<a href="$Link">
				<%t Blog.ReadMoreAbout "Read more about '{title}'..." title=$Title %>
			</a>
		</p>

	<% include EntryMeta %>
</div>
