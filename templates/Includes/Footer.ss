<footer class="footer-section container-fluid">
	<div class="container">
		<div class="row footer-line">
			<div class="footer">
				<div>
				<% if $SiteConfig.FooterLogo %>
				<img class="img-responsive center-block" src="$SiteConfig.FooterLogo.SetHeight(47).Url"/>
				<% else %>
				<img class="img-responsive center-block" src="$ThemeDir/images/logo-inverse.png" />
				<% end_if %>
				</div>

				<div class="social">
					<% if $SiteConfig.Facebook %>
						<div class="social-icon">
							<a href="$SiteConfig.Facebook" class="fa fa-facebook"></a>
						</div>
					<% end_if %>

					<% if $SiteConfig.Twitter %>
						<div class="social-icon">
							<a href="$SiteConfig.Twitter" class="fa fa-twitter"></a>
						</div>
					<% end_if %>

					<% if $SiteConfig.Linkedin %>
						<div class="social-icon">
							<a href="$SiteConfig.Linkedin" class="fa fa-linkedin"></a>
						</div>
					<% end_if %>

					<% if $SiteConfig.Instagram %>
						<div class="social-icon">
							<a href="$SiteConfig.Instagram" class="fa fa-instagram"></a>
						</div>
					<% end_if %>
				</div>

				<div class="footer-email">
					<div class="email-address">
						$SiteConfig.Email
					</div>
				</div>

			</div>

			<div class="footer-divider"> 
			</div>
		</div>
		
		<div class="footer-copyright">
		&copy;2015 POCKETWATCH, all right reserved
		</div>

		<ul class="nav pull-right scroll-top">
			<li>
				<a href="#" title="Scroll to top">
				<i class="glyphicon glyphicon-chevron-up"></i>
				</a>
			</li>
		</ul>
	</div>
</footer><!---contact-section-end--->

