 $("html, body").animate({ scrollTop: 0 }, "slow");
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
//$('#tbHm').hide();

$('.main-header').attr('id', 'idheader');
$('.main-sidebar').attr('id', 'idsidebar');
$('body').attr('id', 'idBody');

//Al dar click en comenzar, que lleve al principio del dash
document.getElementById("go").addEventListener("click", function(){
    $("html, body").animate({ scrollTop: 0 }, "slow");
    $('body').css('background-color','#fff');
    yy = document.querySelectorAll('.content-wrapper');
    z = yy[0];
    
    z.style.backgroundColor = "#fff";
   
});

//Header fixed
$($('.main-header').children()[1]).addClass("navbar-fixed-top");
$($('.main-header').children()[0]).css('position','fixed');

function subir (){
 $('html, body').animate({ scrollTop: 0 }, 'slow'); console.log('subiendo');
}
//Agregar id a cada elemento del sidePanel
$('#menu').on('DOMNodeInserted', 'li', function () {
    
        $('#menu').children().last().attr('id','li'+ $("#menu li").length);
        $('#menu').children().last().on("click", subir);
        id = $('#menu').children().last().attr('id'); 
      
      if((id !== "li1") && (id !== "li2") ){
         $('#menu').children().last().css('display','none');
      }
});






