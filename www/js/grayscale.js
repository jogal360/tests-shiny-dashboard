// jQuery to collapse the navbar on scroll
holi();
function holi (){
  x = document.getElementsByTagName("body");
  x = x[0];
  x.setAttribute("data-spy","scroll");
  x.setAttribute("data-target",".navbar-fixed-top");
}
/*document.getElementById('go').onclick = function() {
  
   document.styleSheets[2].disabled = true;
};*/

bd = document.getElementsByTagName("body");
bd = bd[0];
bd.className += " sidebar-collapse";
  
function collapseNavbar() {
    if ($(".navbar").offset().top > 50) {
        $(".navbar-fixed-top").addClass("top-nav-collapse");
    } else {
        $(".navbar-fixed-top").removeClass("top-nav-collapse");
    }
}

$(window).scroll(collapseNavbar);
$(document).ready(collapseNavbar);

// jQuery for page scrolling feature - requires jQuery Easing plugin
$(function() {
    $('a.page-scroll').bind('click', function(event) {
        var $anchor = $(this);
        $('html, body').stop().animate({
            scrollTop: $($anchor.attr('href')).offset().top
        }, 1500, 'easeInOutExpo');
        event.preventDefault();
    });
});

// Closes the Responsive Menu on Menu Item Click
$('.navbar-collapse ul li a').click(function() {
  if ($(this).attr('class') != 'dropdown-toggle active' && $(this).attr('class') != 'dropdown-toggle') {
    $('.navbar-toggle:visible').click();
  }
});

$('.main-header').hide();
$('.main-sidebar').hide();

$('.main-header').attr('id', 'idheader');
$('.main-sidebar').attr('id', 'idsidebar');


