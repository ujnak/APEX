// if less than 900, when click inside article .slide-holder,  remove .active from .slide-holder.active


//run function on document load
$(document).ready(function () {
restsidebarJD();
});

/* Store the window width */
    var windowWidth = $(window).width();
    /* Resize Event */
    $(window).resize(function(){
        // Check window width has actually changed and it's not just iOS triggering a resize event on scroll
        if ($(window).width() != windowWidth) {
            // Update the window width for next time
            windowWidth = $(window).width();
            // Do stuff here
			restsidebarJD();
        }
        // Otherwise do nothing
    });

////////////////////////////////////////////////////////////

// rest sidebar function
var restsidebarJD = function(){
	       if ($(window).width() > 900) { 
		  //do nothing			   
		   }else{
			// close sidebar when click outside on small screens   
			checkclickJD();
			   };
	};

//////////////////////////////////////////////////////////////

var checkclickJD = function(){
	//evaluate click
	
	var widthJD = $(window).width();
	console.log(widthJD);
	}
	


	
///////////////////////////////////////////////////////////////
	

//////////////////////////////////////////////////////////////
	
$(document).mouseup(function (e)
{
    var container = $("#container");

    if (!container.is(e.target) // if the target of the click isn't the container...
        && container.has(e.target).length === 0) // ... nor a descendant of the container
    {
			console.log("target is not container");
		
    }else{
			console.log("target is the container");
			closepaneJD();
		}
});



var closepaneJD = function(){
/// close window on small screens
	    if ($(window).width() > 900) { 
		  //do nothing
		  	console.log("keep open");
		   }else{
			// close sidebar when click outside on small screens   
			console.log("close it");  
			//console.log(rightPanel);
			//slide-holder remove active
			//$( "#foo" ).trigger( "click" );
			
			   };
	
	};
	
//////////////////////////////////////////////////////////////	
$(document).ready(function() {

	
$(function() {

 if(! window.state){
    //var state = true;
	 window.state = true;
	 };
   //alert(state);
    
	$( "#helptab" ).click(function() {
      if ( window.state ) {
        $( "#helpdrawer" ).animate({
          right: 0
        }, 400, "easeOutSine" );
		//alert(state);true
		//alert(window.state);
      } else {
        $( "#helpdrawer" ).animate({
         right: -280
        }, 400, "easeOutSine" );
		//alert(state);false
		//alert(window.state);
      }
      window.state = !state;
    });
	
  });
	

// how about close if target is not helpdrawer?


$(document).mouseup(function (e)
{
    var container = $("#helpdrawer");

    if (!container.is(e.target) // if the target of the click isn't the container...
        && container.has(e.target).length === 0) // ... nor a descendant of the container
    {
        //container.hide();
		//alert(window.state);
		 $( "#helpdrawer" ).animate({right: -280}, 400, "easeOutSine" );
		   window.state = true;
		
    }
});









});// close doc ready


