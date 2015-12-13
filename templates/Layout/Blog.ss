<% require themedCSS('blog', 'blog') %>

<div class="blog-entry content-container container blog-container<% if $SideBarView %>unit size3of4<% end_if %>">
<div class="row blog-row">
<div class="col-lg-10 col-md-10 col-lg-offset-1 col-md-offset-1">

	<div class="text-center blog-btn-group">
		<% if $Categories.exists %>
			<a class="btn btn-default btn-categories" href="$Link" title="$Title">ALL</a>
			<% loop $Categories %>
				<a class="btn btn-default btn-categories" href="$Link" title="$Title">$Title</a>
				<% if not Last %><% else %><% end_if %>
			<% end_loop %>
		<% end_if %>
	</div>

	<% if $FeaturedPosts %>
		<% if $getFeaturedBlogPost %>
			<% with $getFeaturedBlogPost %>
				<div class="post-feature">

					<div class="post-feature-image">
						<% if $FeaturedImage %>
                            <img class="img-responsive" src="$FeaturedImage.Url" alt="Default Image" />
							<%--$FeaturedImage--%>
						<% else %>
                            <img class="img-responsive" src="pocket-watch/images/default-blog-icon.svg" alt="Default Image" />
						<% end_if %>
					</div>

					<div class="post-feature-text col-md-5">
						<h3>
							<a href="$Link" title="<%t Blog.ReadMoreAbout "Read more about '{title}'..." title=$Title %>">
								<% if $MenuTitle %>$MenuTitle
								<% else %>$Title<% end_if %>
							</a>
						</h3>

						<div class="post-feature-time">
							<a href="$MonthlyArchiveLink">$PublishDate.Format("d/m/Y")</a>
						</div>

						<div class=" post-feature-summary ">
							<% if $Summary %>
							<p>$Summary
							<% else %>
							<p>$Excerpt
							<% end_if %>
						</p>
						</div>

						<div class="post-feature-category pull-left">
							<% if $Categories.exists %>
								<% loop $Categories %>
									<a href="$Link" title="$Title" class="btn-details ">$Title</a><% if not Last %>, <% else %> | <% end_if %>
								<% end_loop %>
							<% end_if %>

						</div>

						<div class="post-feature-tag">
							<% if $Tags.exists %>
								<% loop $Tags %>
									<a href="$Link" title="$Title" >$Title</a><% if not Last %>, <% else %>	<% end_if %>
								<% end_loop %>
							<% end_if %>
						</div>
					</div>
				</div>
			<% end_with %>
		<% end_if %>
	<% end_if %>

<div class= "row">
<div class="blog-single-post">

	<article >





	<div class="content blog-summary">
		<div class="current-tag">
			<% if $CurrentTag %>
			 $CurrentTag.Title
			<% end_if %>
		</div>

		$Content
	</div>

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
</div>
</div>
<div class="container text-center">
<% with $PaginatedList %>
	<% include Pagination %>
<% end_with %>
</div>
</div>
