// JavaScript Document


/*makes header sticky*/
$(document).ready(function(){

//  
var obetitle = $("#main h1:first");//$("#pagetitle");//$("h1");
var mainnav = $(".left-nav-element");
var restnav = $(".tabset-panel");
var article = $("article");


$(window).scroll(function(){
	if( $(this).scrollTop() > 100 ) {
		
		//do this
		mainnav.addClass("left-nav-fixed");
		article.addClass("articleoffset");	
		
		obetitle.addClass("obetitle");
		restnav.addClass("restbar");
		
		// adjustments for various height h1 - long titles
		var h1height = obetitle.outerHeight();
		$(".restbar").css("top", h1height + "px");
		mainnavheight = (h1height + 10);
		mainnav.css("top", mainnavheight + "px");
		
	}else{
		mainnav.removeClass("left-nav-fixed");
		article.removeClass("articleoffset");
		
		obetitle.removeClass("obetitle");
		restnav.removeClass("restbar");
		
		restnav.css("top", 0);
		mainnav.css("top", 0);
		
	}		
});//end function


$( window ).resize(function() {
  		
		if( $(this).scrollTop() > 100 ) {
		
		var h1height = obetitle.outerHeight();
		
		$(".restbar").css("top", h1height + "px");
		
		mainnavheight = (h1height + 10);
		mainnav.css("top", mainnavheight + "px");
		
	}else{
		restnav.css("top", 0);
		
	}		
		
});





});//end doc ready function
   
 
 