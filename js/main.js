// Instantiate MixItUp:


$('#nav').affix({
    offset: {
        top: $('header').height()
    }
});

/* highlight the top nav as scrolling occurs */
$('body').scrollspy({ target: '#nav' })

/* smooth scrolling for scroll to top */
$('.scroll-top').click(function(){
  $('body,html').animate({scrollTop:0},1000);
})

/* smooth scrolling for nav sections */
$('#nav .navbar-nav li>a').click(function(){
  var link = $(this).attr('href');
  var posi = $(link).offset().top+20;
  $('body,html').animate({scrollTop:posi},700);
})

/* gallery view more on mobile */
$('.gallery-view-more .btn').on('click', function(e) {
    e.preventDefault();
    var $this = $(this);
    var $collapse = $this.closest('.collapse-group').find('.collapse');
    $collapse.collapse('toggle');
});

/* fade hero text on scroll*/
$(window).scroll(function(){
    $(".about-text").css("opacity", 1 - $(window).scrollTop() / 500);
});


//dropdown hover show function
//$('ul.nav li.dropdown').hover(function() {
//    $(this).find('.dropdown-menu').stop(true, true).delay(200).fadeIn(500);
//}, function() {
//    $(this).find('.dropdown-menu').stop(true, true).delay(200).fadeOut(500);
//});
