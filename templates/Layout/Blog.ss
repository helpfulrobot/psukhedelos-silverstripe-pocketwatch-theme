<% require themedCSS('blog', 'blog') %>

<div class="blog-entry content-container container blog-container<% if $SideBarView %>unit size3of4<% end_if %>">
<div class="row blog-row">
<div class="col-lg-10 col-md-10 col-lg-offset-1 col-md-offset-1">
<div>
	<p class="post-image">

		<% control $BlogPosts.Filter('FeaturedPost', '1').Sort(Sort, DESC).Limit(1) %>
			 <li>$Title</li>
			 $FeaturedImage.CroppedImage(795,500)
	 <% end_control %>

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

	<article class="blog-single-post">

	<div class=" text-center">
	<% if $Categories.exists %>
		<a class="btn btn-default btn-categories" href="$Link" title="$Title">ALL</a>
		<% loop $Categories %>
			<a class="btn btn-default btn-categories" href="$Link" title="$Title">$Title</a>
			<% if not Last %><% else %><% end_if %>
		<% end_loop %>
	<% end_if %>
	</div>

	<div class="current-tag">
		<% if $CurrentTag %>
		 $CurrentTag.Title
		<% end_if %>
	</div>

	<div class="content blog-summary">$Content</div>

	<% if $PaginatedList.Exists %>
		<% loop $PaginatedList %>
			<% include PostSummary %>
		<% end_loop %>
	<% else %>
		<p><%t Blog.NoPosts 'There are no posts' %></p>
	<% end_if %>

	</article>
	$Form
	$CommentsForm
</div>

</div>
<div class="container text-center">
<% with $PaginatedList %>
	<% include Pagination %>
<% end_with %>
</div>
</div>
