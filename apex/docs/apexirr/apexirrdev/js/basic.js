<!-- OBE Template 2012: Version 3.0 Last updated 3/13/2012-->
<!-- Author: Glenn Stokol and Marcie Young-->
jQuery(function ($) {
  // If the window is resized recalculate the header and adjust
  $(window).resize(function(e) {
    $("#container").css("top", ($("header").height()+ parseInt($("header").css("padding-bottom"))) + "px");  
  });
	
  $("h2[id],h3[id]").each(function() {
	$(this).before('<a id="' + $(this).attr("id") +'">&nbsp;</a>');
	$(this).removeAttr("id");
  });

  $("header h1").click(function() {
	$("header").find("nav").slideToggle("fast", function(){
	  $("#container").css("top", ($("header").height()+ parseInt($("header").css("padding-bottom"))) + "px");
	});
  });
   
  //Hide all sections when page loads
  $('section > div').hide();
	
  //Set Show topics and help dialogs to not show but make them modal
  $("#dialog").dialog({
	autoOpen: false,
	modal: true
  });
	  
  $("#dialog-help").dialog({
	autoOpen: false,
	modal: true
  });

	  /* Topic List Builder */
  $('article > #container > section > h2').each(function() {
    var anchor = $(this).prev("a[id]");
	$('#dialog ul:first').append('<li><a href="#' + $(anchor).attr("id") + '"><img align="absmiddle" src="css/images/right_arrow_bullet.gif">' + $(this).text() + '</a></li>');
	if ($(this).parent('section').find('section').length > 0) {
      $('#dialog ul:first').append('<ul></ul>');
      $(this).parent("section").find('section > h3').each(function(){
   	    anchor = $(this).prev("a[id]"); 
		$('#dialog ul:first > ul:last').append('<li><a href="#' + $(anchor).attr("id") + '"><img align="absmiddle" src="css/images/right_arrow_bullet.gif">' + $(this).text() + '</a></li>');                    
      });
    } // end if
  }); // article > #container > section > h2

  // Manage anchors/links to in document and external sites
  $("section a").click(function(e) { 
	 var target = $(this).attr("href");
	 var hh = $("header").height() + parseInt($("header").css("padding-bottom"));
	 e.preventDefault();
	 if (target.charAt(0) == '#') {
 	   $(target).parents("section").each(function(){
	     $(this).find('h2,h3').first().trigger("click", "true");		
	   });
	   $(target).next('h2,h3').trigger("click", "true");
	   $(target).css("top", -hh);	 
	 }
	 window.location.href = target;
  });

  //Hide dialog and go to section when topic/subtopic pressed
  $('#dialog li').click(function (e) {	 
	var hh = $("header").height() + parseInt($("header").css("padding-bottom"));
	e.preventDefault();
	$('#dialog').dialog( 'close' );
	var target = $(this).find('a').attr("href");
	$(target).parents("section").each(function(){
	  $(this).find('h2,h3').first().trigger("click", "true");		
	});
	$(target).next('h2,h3').trigger("click", "true");
	$(target).css("top", -hh);	 
	window.location.href = target;
  });

  //Show Topic List when button is clicked
  $("#topicBtn").click(function() {
	$( "#dialog" ).dialog( "open" );
	return false;
  });
  
/*  $("#extraHelpBtn").button();
  $("#extraHelpBtn").button({
    icons: { primary: "ui-icon-help" }
  });
*/
  //Show Help when button is clicked		
  //$(".help, #extraHelpBtn").click(function() {
  $(".help").click(function() {
	$( "#dialog-help" ).dialog( "open" );
	return false;
  });

  //handle view image icon and hide and show of screenshot with overlay
  $(".ScreenShot").each(function() {
	$(this).before('<div class="overlay ui-icon ui-icon-closethick"></div>');
	$(this).attr("title", $(this).attr("src"));	 
	$(this).hover(
      function() {
	    if ($(this).hasClass("view_icon")) {
          $(this).attr("src", "css/images/show_image_h.png");
	    }
	  },
	  function() {
	    if ($(this).hasClass("view_icon")) {
          $(this).attr("src", "css/images/show_image_v.png");
	    }
	  }
	);
	$(this).click(function(e, showImage) {
	  var delay = 400;
	  if (showImage == "true" || !$(this).hasClass("view_icon")) {
	    $(this).addClass("view_icon");
	    $(this).attr("src", "css/images/show_image_v.png");
	    $(this).prev('div.overlay').hide();
		$(this).css("border-width", "0px");
	  }
	  else {
	    if (showImage != "false") {
          $(this).attr("src", "css/images/show_image_c.png");
	    }
		else {
			delay = 0;
		}
	    $(this).animate({opacity: 1.0}, delay, function() {
		   $(this).attr("src", $(this).attr("title"));
  		   $(this).css("border-width", "1px");
	       $(this).prev('div.overlay').show();
    	   $(this).removeClass("view_icon");
	    });
	  }
    });	 
  });

  //click screenshot
  $('div.overlay').click(function(){
    $(this).next('.ScreenShot').trigger("click");
  });

  //Add plus icon to topic sections
  $(function() {
    $('h2').css('text-align','left').button({
      icons: {primary: "ui-icon-circle-plus"}
	});
  });

  //handle toggle of topic and subtopic + and - icons
  $('h2,h3').click(function(event, showHide) {
	if (showHide=="true" || $(this).next('div').is(":hidden")) {
	  if ($(this).get(0).tagName === "H3") {
		$(this).next('div').fadeIn();
		$(this).removeClass("r_arrow");
		$(this).addClass("d_arrow");
	  }
	  else {
		$(this).next('div').show();
		$(this).button({
		  icons: {primary: "ui-icon-circle-minus"}
		});
	  }
    }
	else {
	  if ($(this).get(0).tagName === "H3") {
		$(this).next('div').fadeOut();
		$(this).removeClass("d_arrow");
		$(this).addClass("r_arrow");	
	  }
	  else {
		$(this).next('div').hide();
		$(this).button({
	      icons: {primary: "ui-icon-circle-plus"}
	    });
	  }
	}   
  });

  //topic list button and dialog settings  
  $("#topicBtn").button({
    icons: { primary: "ui-icon-newwin" }
  });/* -- The click() part redundant as it was done earlier
      .click(function() {
       $('#toc').dialog("open");
	   return false;	
     });*/

  //Expand All Topics/Collapse All Topics buttons settings
  $("#tglTopicBtn").button({
	 icons: { primary: "ui-icon-carat-1-s" }
  }).click(function() {
	  var options;
	  if ( $(this).text() === "Expand All Topics" ) {
		  options = {
			label: "Collapse All Topics",
			icons: { primary: "ui-icon-carat-1-n" }
		  };
		 $('h2,h3').trigger("click", "true");
	  }
	  else {
		  options = {
			label: "Expand All Topics",
			icons: { primary: "ui-icon-carat-1-s" }
		  };
		 $('h2,h3').trigger("click", "false");
	  }
	  $(this).button( "option", options );
	  return false;
    });

  //Show All Images and Hide All Images buttons and settings
  $("#tglImageBtn").button({
	 label: "Hide All Images",
	 icons: { primary: "ui-icon ui-icon-minus" }
   }).click(function() {
		var options;
		if ( $(this).text() === "Hide All Images" ) {
		  options = {
			label: "Show All Images",
			icons: { primary: "ui-icon ui-icon-plus" }
		  };
		  $('.ScreenShot').trigger("click", "true");
		} else {
		  options = {
			label: "Hide All Images",
			icons: { primary: "ui-icon ui-icon-minus" }
		  };
		  $('.ScreenShot').trigger("click", "false");			
		}
		$( this ).button( "option", options );
		return false;
    });

  //Print button and settings
  $("#printBtn").button({
    icons: { primary: "ui-icon-print" }
  }).click(function() {
	  window.print();
	  return false;	
    });
  $("#container").css("top", ($("header").height()+ parseInt($("header").css("padding-bottom"))) + "px");

  // Check if someone has saved a bookmark or navigated back to a saved section and reinstate context as best as we can.
  if (window.location.hash.length > 0) {
	var target = window.location.hash;
	//var hh = $("header").height() + parseInt($("header").css("padding-bottom"));
 	$(target).parents("section").each(function(){
	  $(this).find('h2,h3').first().trigger("click", "true");		
	});
	$(target).next('h2,h3').trigger("click", "true");
	 //$(target).css("top", -hh);	 
	 //window.location.href = target;
  }
}); // End of jQuery code