(function($){

	/**
	 * Copyright 2012, Digital Fusion
	 * Licensed under the MIT license.
	 * http://teamdf.com/jquery-plugins/license/
	 *
	 * @author Sam Sehnert
	 * @desc A small plugin that checks whether elements are within
	 *		 the user visible viewport of a web browser.
	 *		 only accounts for vertical position, not horizontal.
         * padding fork at https://github.com/chasetec/jquery-visible/blob/master/jquery.visible.js
	 */
	$.fn.visible = function(partial,hidden,viewPortPadding){
		
	    var $t				= $(this).eq(0),
	    	t				= $t.get(0),
	    	$w				= $(window),
	    	topPadding		= viewPortPadding ? viewPortPadding.top ? viewPortPadding.top : 0 : 0,
	    	bottomPadding		= viewPortPadding ? viewPortPadding.bottom ? viewPortPadding.bottom : 0 : 0,
	    	viewTop			= $w.scrollTop() + topPadding,
	    	viewBottom		= viewTop + $w.height() - topPadding - bottomPadding,
	    	_top			= $t.offset().top,
	    	_bottom			= _top + $t.height(),
	    	compareTop		= partial === true ? _bottom : _top,
	    	compareBottom	= partial === true ? _top : _bottom,
	    	clientSize		= hidden === true ? t.offsetWidth * t.offsetHeight : true;
		
		return !!clientSize && ((compareBottom <= viewBottom) && (compareTop >= viewTop));
    };
    
})(jQuery);
