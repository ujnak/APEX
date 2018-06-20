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
		 
		 var scrollamount = $(window).scrollTop();
		$('.left-nav-fixed').css("top", scrollamount + 'px');
       console.log("scrollamout" + scrollamount);
	   
	   leftbarheight();
    
		
		
	}else{
		mainnav.removeClass("left-nav-fixed");
		article.removeClass("articleoffset");
		
		obetitle.removeClass("obetitle");
		restnav.removeClass("restbar");
	}		

});//end function


   
   
 $(window).resize(function(){
	 
	 leftbarheight();
	   
});//end function


function leftbarheight(){
	
//var footerheight = $('footer').height();
//console.log ("footerheight" + footerheight);

//var contenttop = $("#content").offset();
//console.log ("contenttop" + offset);

	 var browserheight = $(window).height() - 130;
	   $('.left-nav-fixed').css("height", browserheight + 'px');
	   //browser height - (contnet top position + footer height) = content area height?
	   
	   
	
	};

  });//end doc ready function 