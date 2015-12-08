<%-- NOTE: Before including this, you will need to wrap the include in a with block  --%>


<% if $MoreThanOnePage %>

	<p class="pagination">
		<% if $NotFirstPage %>
			<a class="prev" href="{$PrevLink}">
					<i class="fa fa-3x fa-angle-left pagi-prev"></i>
			</a>
		<% end_if %>


		<% loop $Pages %>
			<% if $CurrentBool %>
				<span>$PageNum</span>
			<% else %>
				<% if $Link %>
					<a href="$Link" class="page-number">$PageNum</a>
				<% else %>
					<span>...</span>
				<% end_if %>
			<% end_if %>
		<% end_loop %>


		<% if $NotLastPage %>
			<a class="next" href="{$NextLink}">
				<i class="fa fa-3x fa-angle-right pagi-next"></i>
			</a>
		<% end_if %>
	</p>
<% end_if %>
