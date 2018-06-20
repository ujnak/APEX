/* 
 * OBE Template 2014: Version 3.3.5 Last updated 02/20/2015
 * Author: Glenn Stokol, Marcie Young, Matthieu Heimer, Jordan Douglas
 */
jQuery(function($) {

    var loaded = false;
    var lastClickedSection;
    var currentSectionId;
    // sectionOpened is called when the user begins to read a section
    $(document).on("sectionOpened", function(evt, data) {
        data.section;
        $.cookie('section', data.id, {expires: 7});
    });
    // sectionClosed is called when the user stops reading a section
    $(document).on("sectionClosed", function(evt, data) {
        $.removeCookie('section');
    });
// ***FUNCTION DECLARATIONS***
    function toggleNav() {
        $("nav#topics").toggle();
        $("#topicBtn").toggle();
        if ($("nav#topics").is(":visible") && $("body").innerWidth() > 800) {
            $("#container").addClass("withSidebar");
            $("nav#topics").css("top", $("header").outerHeight() + 10 + "px");
            $("#container").css("min-height", $("nav#topics").outerHeight(true) + $("footer").outerHeight() + "px");
            // no dynamic header $("header").css("position", "fixed");
        } else {
            $("#container").css("min-height", "0");
            $("#container").removeClass("withSidebar");
            // no dynamic header $("header").css("position", "static");
        }
        // no dynamic header
        //if ($("header").css("position") === "fixed") {
        $("#container").css("top", $("header").outerHeight() + "px");
        //} else {
        //    $("#container").css("top", "0px");
        //}
    }

    function findVisibleSubSection(sectionId, topPadding) {
        //does the clicked section have a subsection that take up most of the screen?
        var section = $("a[id='" + sectionId + "']").closest("section");
        var subSections = section.find("> div > section");
        //find highest partially visible
        subSections.each(function() {
            var $this = $(this);
            var div = $this.find("div").filter(":first");
            if (div.is(":visible") && div.visible(true, false, {top: topPadding})) {
                currentSectionId = $this.find("a[id]").filter(":first").attr("id");
                return false;
            }
        });
        //find last all in viewport section
        $(subSections.get().reverse()).each(function() {
            var $this = $(this);
            var div = $this.find("div").filter(":first");
            if (div.is(":visible") && div.visible(false, false, {top: topPadding})) {
                currentSectionId = $this.find("a[id]").filter(":first").attr("id");
                return false;
            }
        });
    }

    function updateSelectedSection() {
        var topPadding = $("body article > header").height() + 10;
        //save previously selected section
        var oldSectionId = currentSectionId;
        currentSectionId = undefined;
        //is the last clicked visible and expanded?
        if (lastClickedSection &&
                lastClickedSection.find("div").filter(":first").is(":visible") &&
                lastClickedSection.find("div").filter(":first").visible(true, false, {top: topPadding})) {
            currentSectionId = lastClickedSection.find("a[id]").filter(":first").attr("id");
        } else {
            // last clicked not visible, forget it
            lastClickedSection = undefined;
            //find highest partially visible
            $("#container > section").each(function() {
                var $this = $(this);
                var div = $this.find("div").filter(":first");
                if (div.is(":visible") && div.visible(true, false, {top: topPadding})) {
                    currentSectionId = $this.find("a[id]").filter(":first").attr("id");
                    return false;
                }
            });
            //find last all in viewport section
            $($("#container > section").get().reverse()).each(function() {
                var $this = $(this);
                var div = $this.find("div").filter(":first");
                if (div.is(":visible") && div.visible(false, false, {top: topPadding})) {
                    currentSectionId = $this.find("a[id]").filter(":first").attr("id");
                    return false;
                }
            });
        }

        findVisibleSubSection(currentSectionId, topPadding);

        if (currentSectionId == oldSectionId) {
            //nothing changed
            return;
        }
        $("#navToc li, #dialog li").removeClass("selected");
        var sectionText;
        if (oldSectionId) {
            var oldSection = $("a[id='" + oldSectionId + "']").closest("section");
            sectionText = oldSection.parent().closest("section").find("h2").first().text();
            if (sectionText) {
                sectionText += ",";
            }
            sectionText += oldSection.closest("section").find("h3,h2").first().text();
            $(document).triggerHandler("sectionClosed", {
                section: sectionText,
                id: oldSectionId
            });
        }

        if (currentSectionId) {
            var currentSection = $("a[id='" + currentSectionId + "']").closest("section");
            sectionText = currentSection.parent().closest("section").find("h2").first().text();
            if (sectionText) {
                sectionText += ",";
            }
            sectionText += currentSection.closest("section").find("h3,h2").first().text();
            $(document).triggerHandler("sectionOpened", {
                section: sectionText,
                id: currentSectionId
            });
            $("#navToc, #dialog").find("li a[href=#" + currentSectionId + "]").closest("li").addClass("selected");
        }
    }

    function hideMedia(content) {
        content.closest(".collapsible-wrapper").hide();
        //content.prevAll(".collapsible-icon").first().hide();
        content.closest(".collapsible-wrapper").prev(".view-button").show();
    }

    function showMedia(content, animateButton) {
        var showButton = content.closest(".collapsible-wrapper").prev(".view-button");
        var f = function() {
            showButton.hide();
            showButton.removeClass("active");
            content.closest(".collapsible-wrapper").show();
            //content.prevAll(".collapsible-icon").first().show();
        };
        if (animateButton) {
            showButton.addClass("active");
            setTimeout(function() {
                f();
                updateSelectedSection();
            }, 50);
        } else {
            f();
        }
    }

    function hideAllMedia() {
        $(".ScreenShot, .collapsible").filter(function() {
            return !($(this).data("show-all-exclude"));
        }).each(function() {
            hideMedia($(this));
        });
        updateSelectedSection();
    }

    function showAllMedia() {
        $(".ScreenShot, .collapsible").filter(function() {
            return !($(this).data("show-all-exclude"));
        }).each(function() {
            showMedia($(this), false);
        });
        updateSelectedSection();
    }


    function hideSections() {
        $('section > h2').each(function() {
            $(this).next('div').hide();
            $(this).button({
                icons: {primary: "ui-icon-circle-plus"}
            });
        });
        $('section > h3').each(function() {
            $(this).next('div').hide();
            $(this).removeClass("d_arrow");
        });
    }

    function showSections() {
        $('section > h2').each(function() {
            $(this).next('div').show();
            $(this).button({
                icons: {primary: "ui-icon-circle-minus"}
            });
        });
        $('section > h3').each(function() {
            $(this).next('div').show();
            $(this).addClass("d_arrow");
        });
    }

    function limitTOC() {
        if ($('nav#topics').css('position') === 'fixed') {
            $('nav#topics').css('max-height', $(window).height() - $('footer').outerHeight() - $('nav#topics').position().top - 15 + 'px');
        } else {
            $('nav#topics').css('max-height', '');
        }
    }

// ***JQUERY FUNCTION DECLARATIONS***

    $.fn.scrollStopped = function(callback) {
        $(this).scroll(function() {
            var $this = $(this);
            if ($this.data('scrollTimeout')) {
                clearTimeout($this.data('scrollTimeout'));
            }
            $this.data('scrollTimeout', setTimeout(callback, 500));
        });
    };
// ***JQUERY UI INIT***

    //Set Show topics and help dialogs to not show but make them modal
    $("#dialog").dialog({
        width: "auto",
        autoOpen: false,
        modal: false,
        buttons: [
            {
                text: "Pin",
                click: function() {
                    toggleNav();
                    $(this).dialog("close");
                }
            },
            {
                text: "Close",
                click: function() {
                    $(this).dialog("close");
                }
            }
        ],
        open: function() {
            $(this).parent().find('.ui-dialog-buttonpane button:first-child').button({
                icons: {primary: 'ui-icon-pin-w'}
            });
            $(this).parent().find('.ui-dialog-buttonpane button:first-child').next().button({
                icons: {primary: 'ui-icon-circle-close'}
            });
            $(this).parent().find(".ui-dialog-titlebar-close span.ui-icon").removeClass("ui-icon-closethick").addClass("ui-icon-close");
        }
    });
    $("#dialog-help").dialog({
        autoOpen: false,
        modal: true
    });
    //Add plus icon to topic sections
    $('h2').css('text-align', 'left').button({
        icons: {primary: "ui-icon-circle-plus"}
    });

    //tooltip helper
    $("img").each(function() {
        //set alt to title or title to alt if either is missing
        if ($(this).attr("title") && !$(this).attr("alt")) {
            $(this).attr("alt", $(this).attr("title"));
        } else if (!$(this).attr("title") && $(this).attr("alt")) {
            $(this).attr("title", $(this).attr("alt"));
        }
    });

    $(".ScreenShot, .collapsible").each(function() {
        var content = $(this);
        var buttonText;
        if (content.data("view-label")) {
            buttonText = content.data("view-label");
        } else if (content.is(".ScreenShot, img")) {
            buttonText = "View Image";
        } else {
            buttonText = "View";
        }
        // replace blocks with blocks and spans with spans
		// collapse image code
        if (content.css("display") === "block") {
            //content.before('<div class="view-button" style="display:none;"><a href="#"><span class="left">&nbsp</span><span class="center">' + buttonText + '</span><span class="right">&nbsp;</span></a></div>');
            //content.before('<div class="view-button btn btn-primary" style="display:none;"><a href="#"><span class="left">&nbsp</span><span class="center">' + buttonText + '</span><span class="right">&nbsp;</span></a></div>');
			content.before('<div class="view-button btn btn-primary" style="display:none;">' + buttonText + '</div>');
			
			content.wrap("<span class='collapsible-outline' style='position:relative;display:inline-block'/>")
            content.parent().wrap("<div class='collapsible-wrapper'/>");
        } else {
            content.css("display", "inline-block");
            content.addClass('collapsible-outline');
           // content.before('<a class="view-button" style="display:none;" href="#"><span class="left">&nbsp</span><span class="center">' + buttonText + '</span><span class="right">&nbsp;</span></a>');
            //content.before('<a class="view-button btn btn-primary" style="display:none;" href="#"><span class="left">&nbsp</span><span class="center">' + buttonText + '</span><span class="right">&nbsp;</span></a>');     
			 content.before('<div class="view-button btn btn-primary" style="display:none;" >' + buttonText + '</div>');     
			
			content.wrap("<span class='collapsible-wrapper' style='display:inline-block;position:relative'/>");
        }
        //content.before('<span class="collapsible-icon ui-icon ui-icon-closethick"/>');
		content.before('<span class="collapsible-icon ui-icon ui-icon-closethick"/>');
		
        //let people highlight collapsible text
        if (content.get(0).tagName.toLowerCase() === 'img') {
            content.parent().click(function() {
                hideMedia(content);
                updateSelectedSection();
            });
        }
        //content.prev(".ui-icon-closethick").click(function() {
		content.prev(".ui-icon-closethick").click(function() {
            hideMedia(content);
            updateSelectedSection();
        });
        content.closest(".collapsible-wrapper").prev(".view-button").off('click').click(function() {
            showMedia(content, true);
        });
        if (content.data('initial-state') === 'hidden') {
            hideMedia(content);
        }
    });


    //topic list button and dialog settings  
    $("#topicBtn").button({
       // icons: {primary: "ui-icon-newwin"}
    });
	
	
	$(".skipto").click(function(){
		  showSections();
		});

	
    //Expand All Topics/Collapse All Topics buttons settings
    $("#tglTopicBtn").button({
        //icons: {primary: "ui-icon-carat-1-s"}
    }).click(function() {
        lastClickedSection = undefined;
        var options;
        if ($(this).text() === "Expand All Topics") {
            options = {
                label: "Collapse All Topics",
               // icons: {primary: "ui-icon-carat-1-n"}
            };
            showSections();
        }
        else {
            options = {
                label: "Expand All Topics",
               // icons: {primary: "ui-icon-carat-1-s"}
            };
            hideSections();
        }
        $(this).button("option", options);
        updateSelectedSection();
        return false;
    });
	
	
	/// new button script for bootstrap buttons jd
/*	$("#TopicBtnShow").click(function() {
        
       
            showSections();
	});
	$("#TopicBtnHide").click(function() {
        
            hideSections();
       
     
    });*/
	
	
	
	
	
	
	
	
	
	
	
	
    //Show All Images and Hide All Images buttons and settings
    $("#tglImageBtn").button({
        label: "Hide All Media",
       // icons: {primary: "ui-icon ui-icon-minus"}
    }).click(function() {
        var options;
        if ($(this).text() === "Hide All Media") {
            options = {
                label: "Show All Media",
                //icons: {primary: "ui-icon ui-icon-plus"}
            };
            hideAllMedia();
        } else {
            options = {
                label: "Hide All Media",
               // icons: {primary: "ui-icon ui-icon-minus"}
            };
            showAllMedia();
        }
        $(this).button("option", options);
        updateSelectedSection();
        return false;
    });
	
	
    //Print button and settings
    $("#printBtn").button({
       // icons: {primary: "ui-icon-print"}
    }).click(function() {
        var toggled = false;
        if ($("nav#topics").is(":visible")) {
            toggleNav();
            toggled = true;
        }
        window.print();
        if (toggled) {
            toggleNav();
        }
        return false;
    });
// ***PAGE LOADING INITALIZATION***
    $('article > #container > section > h2:first').each(function() {
        $(this).before('<a id="overview">&nbsp;</a>');
        $(this).removeAttr("id");
    });
    $('article > #container > section > h2:last').each(function() {
        $(this).before('<a id="summary">&nbsp;</a>');
        $(this).removeAttr("id");
    });
    var autoId = 1;
    $('article > #container > section > h2').not(':first').not(':last').each(function() {
        if ($('article').is('.auto-number')) {
            $(this).button("option", "label", autoId + '. ' + $(this).find(".ui-button-text").text());
        }
        $(this).before('<a id="section' + autoId + '">&nbsp;</a>');
        $(this).removeAttr("id");
        if ($(this).parent('section').find('section').length > 0) {
            var subId = 1;
            $(this).parent("section").find('section > h3').each(function() {
                if ($('article').is('.auto-number')) {
                    $(this).text(autoId + '.' + subId + ' ' + $(this).text());
                }
                $(this).before('<a id="section' + autoId + 's' + subId++ + '">&nbsp;</a>');
                $(this).removeAttr("id");
            });
        } // end if
        autoId++;
    });

    //make li numbers bold but not content
    $('section > div > ol > li').css('font-weight', 'bold');
    //css rule present that sets the span to font-weight normal
    $('section > div > ol > li').wrapInner('<span>');


    //Add #navToc
/*    $('article > #container').prepend('<nav id="topics">' +
            '<div class="ui-dialog-titlebar ui-widget-header ui-corner-all ui-helper-clearfix">' +
            '<span class="ui-dialog-title" id="ui-dialog-title-dialog">Topic List</span>' +
            '<a href="#" class="ui-dialog-titlebar-close ui-corner-all" role="button">' +
            '<span class="ui-icon ui-icon-close">close</span>' +
            '</a>' +
            '</div>' +
            '<div id="navToc">' +
            '<ul></ul>' +
            '</div>' +
            '</nav>');*/
			
			
			
    /* Topic List Builder */
    $('article > #container > section > h2').each(function() {
        var anchor = $(this).prev("a[id]");
        var appendText = '<li><a title="' + $(this).text() + '" href="#' + $(anchor).attr("id") + '">' + $(this).text() + '</a></li>';
        $('#dialog ul:first').append(appendText);
        $('#navToc ul:first').append(appendText);
        if ($(this).parent('section').find('section').length > 0) {
            $('#dialog ul:first').append('<ul></ul>');
            $('#navToc ul:first').append('<ul></ul>');
            $(this).parent("section").find('section > h3').each(function() {
                anchor = $(this).prev("a[id]");
                appendText = '<li><a title="' + $(this).text() + '" href="#' + $(anchor).attr("id") + '">' + $(this).text() + '</a></li>';
                $('#dialog ul:first > ul:last').append(appendText);
                $('#navToc ul:first > ul:last').append(appendText);
            });
        } // end if
    }); // article > #container > section > h2


    $("nav#topics").css("top", $("header").outerHeight() + 10 + "px");
    if ($(window).width() >= 1024) {
        $("#container").addClass("withSidebar");
        $("#topicBtn").hide();
    } else {
        $("nav#topics").hide();
    }

    var buttonToolbarSize;
    // ***EVENT HANDLING REGISTRATION***
    $(window).load(function() {
        // no dynamic header
        //if ($("header").css("position") === "fixed") {
        $("#container").css("top", $("header").outerHeight() + "px");
        //} else {
        //    $("#container").css("top", "0px");
        //}
        if ($("nav#topics").is(":visible")) {
            $("#container").css("min-height", $("nav#topics").outerHeight(true) + $("footer").outerHeight() + "px");
        }
        buttonToolbarSize = $("#toolbar").outerWidth(true);
        if ($("header nav").width() - buttonToolbarSize < 10) {
            $("#toolbar button").button({
                text: false
            });
        }
        if (!loaded) {
            loaded = true;
            $(document).triggerHandler("loadOBE");
        }
        //preload button active images
        var img1 = new Image();
        var img2 = new Image();
        var img3 = new Image();

        img1.src = "css/images/bdl.png";
        img2.src = "css/images/bdr.png";
        img3.src = "css/images/bdc.png";

        var img4 = new Image();
        var img5 = new Image();
        var img6 = new Image();

        img4.src = "css/images/bul.png";
        img5.src = "css/images/bur.png";
        img6.src = "css/images/buc.png";
    });
    if (!loaded) {
        loaded = true;
        $(document).triggerHandler("loadOBE");
    }


    $(window).on("pageshow", function(e) {
        if (!loaded) {
            loaded = true;
            $(document).triggerHandler("loadOBE");
        }
    });

    // no dynamic header
    //if ($("header").css("position") === "fixed") {
    $("#container").css("top", $("header").outerHeight() + "px");
    $("nav#topics").css("top", $("header").outerHeight() + 10 + "px");
    $("#container").css("min-height", $("nav#topics").outerHeight(true) + $("footer").outerHeight() + "px");
    //} else {
    //    $("#container").css("top", "0px");
    //}

    var lastHeaderSize = 0;
    setInterval(function() {
        // no dynamic header
        //if ($("header").css("position") === "fixed") {
        if ($("header").outerHeight() !== lastHeaderSize) {
            lastHeaderSize = $("header").outerHeight();
            $("#container").css("top", lastHeaderSize + "px");
            $("nav#topics").css("top", (lastHeaderSize + 10) + "px");
            $("#container").css("min-height", $("nav#topics").outerHeight(true) + $("footer").outerHeight() + "px");
        }
        //} else {
        //    $("#container").css("top", "0px");
        //}
    }, 500);

    // If the window is resized recalculate the header and adjust
    $(window).resize(function(e) {
        limitTOC();
        // no dynamic header
        //if ($("header").css("position") === "fixed") {
        $("#container").css("top", $("header").outerHeight() + "px");
        $("nav#topics").css("top", ($("header").outerHeight() + 10) + "px");
        $("#container").css("min-height", $("nav#topics").outerHeight(true) + $("footer").outerHeight() + "px");
        //} else {
        //    $("#container").css("top", "0px");
        //}


        updateSelectedSection();
        if ($("header nav").width() - buttonToolbarSize < 10) {
            $("#toolbar button").button("option", "text", false);
        } else {
            $("#toolbar button").button("option", "text", true);
        }
        if ($("nav#topics").is(":visible") && $("body").innerWidth() > 800) {
            $("#container").addClass("withSidebar");
            $("#container").css("min-height", $("nav#topics").outerHeight(true) + $("footer").outerHeight() + "px");
            // no dynamic header
            //$("header").css("position", "fixed");
        } else {
            $("#container").css("min-height", "0");
            $("#container").removeClass("withSidebar");
            // no dynamic header
            //$("header").css("position", "static");
        }
        // no dynamic header
        //if ($("header").css("position") === "fixed") {
        $("#container").css("top", $("header").outerHeight() + "px");
        //} else {
        //    $("#container").css("top", "0px");
        //}
    });
    $("#topics .ui-dialog-titlebar a").hover(function() {
        $(this).addClass("ui-state-hover");
    }, function() {
        $(this).removeClass("ui-state-hover");
    });
    $("#topics .ui-dialog-titlebar a").click(function() {
        toggleNav();
    });
    $(window).scrollStopped(function() {
        updateSelectedSection();
    });
    $("header h1").click(function() {
        $("header").find("nav").slideToggle("fast", function() {
            //TODO
            $("nav#topics").css("top", $("header").outerHeight() + 10 + "px");
            // no dynamic header
            //if ($("header").css("position") === "fixed") {
            $("#container").css("top", $("header").outerHeight() + "px");
            //} else {
            //    $("#container").css("top", "0px");
            //}
        });
    });
    // Manage anchors/links to in document and external sites
    $("section a:not([target])").click(function(e) {
        var target = $(this).attr("href");
        if (target && target.length > 0) {
            var hh = $("header").outerHeight();
            e.preventDefault();
            if (target.charAt(0) === '#' && target.length > 1) {
                $(target).parents("section").each(function() {
                    $(this).find('h2,h3').first().trigger("click");
                });
                $(target).next('h2,h3').trigger("click");
                //$(target).css("top", -hh + "px");
                window.location.href = target;
            } else if (target.charAt(0) !== '#') {
                window.location.href = target;
            }
            // do nothing for '#' targets because they are probably handled by a different handler
        }
    });

    //Hide dialog and go to section when topic/subtopic pressed
    $('#dialog li').click(function(e) {
        //var hh = $("header").outerHeight();
        e.preventDefault();
        hideSections();
        $('#dialog').dialog('close');
        var target = $(this).find('a').attr("href");
        $(target).closest("section").find('h2,h3').first().trigger("click");
        //$(target).next('h2,h3').trigger("click");
        //$(target).css("top", hh + "px");
        window.location.href = target;
    });
    $('#navToc li').click(function(e) {
        e.preventDefault();
        hideSections();
        var target = $(this).find('a').attr("href");
        $(target).closest("section").find('h2,h3').first().trigger("click");
        window.location.href = target;
    });
    //Show Topic List when button is clicked
    $("#topicBtn").click(function() {
        $("#dialog").dialog("open");
        return false;
    });
    //
    //Show Help when button is clicked		
    //$(".help, #extraHelpBtn").click(function() {
    $(".help").click(function() {
        $("#dialog-help").dialog("open");
        return false;
    });
    //click screenshot
    $('div.overlay').click(function() {
        $(this).find('.ScreenShot, .collapsible').trigger("click");
    });
	
	
    //handle toggle of topic and subtopic + and - icons
    $('section > h2, section > h3').click(function() {
        if ($(this).next('div').is(":hidden")) {
            lastClickedSection = $(this).closest("section");
            if ($(this).get(0).tagName === "H3") {
                $(this).addClass("d_arrow");
                if ($(this).closest("section").parent().closest("section").find("h2").first().next('div').is(":hidden")) {
                    $(this).closest("section").closest("section").find("h2").first().button({
                        icons: {primary: "ui-icon-circle-minus"}
                    });
                    $(this).closest("section").parent().closest("section").find("h2").first().next('div').show();
                }
            } else {
                $(this).button({
                    icons: {primary: "ui-icon-circle-minus"}
                });
            }
            $(this).next('div').show();
        } else {
            $(this).next('div').hide();
            if ($(this).get(0).tagName === "H3") {
                lastClickedSection = $(this).closest("section").parent().closest("section");
                $(this).removeClass("d_arrow");
            } else {
                $(this).button({
                    icons: {primary: "ui-icon-circle-plus"}
                });
            }
        }
        updateSelectedSection();
    });

   // $('<div id="dialog-confirm" title="Resume Previous Section?">' +
          //  '<p>Would you like to resume reading section <span style="font-weight:bold" id="dialogSectionName"></span>?</p>' +
          //  '</div>').appendTo('body').hide();



    // run codemirror syntax highlighting
    $(".syntax-highlight").each(function() {
        $(this).addClass("CodeMirror");
        var theme = $(this).data("theme") ? "cm-s-" + $(this).data("theme") : "cm-s-default";
        $(this).addClass(theme);
        CodeMirror.runMode($(this).text(), $(this).data("mode"), this);
    });

    $('section > div').hide();

    // make not resizable on mobile devices
    $('meta[name=viewport]').attr('content', 'width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0');

    $(window).on('orientationchange', function() {
        limitTOC();
    });
    limitTOC();


    $(window).load(function() {
        var url = $.url();
		var direct = url.param("direct");
		var currentSection;
		if (!(typeof direct != "undefined" && direct === "true") && $.cookie('section')) {
            currentSection = $("#" + $.cookie('section')).closest("section");
        } else if (window.location.hash.length > 0) {
            currentSection = $(window.location.hash).closest("section");
        }
        if (currentSection && currentSection.length === 1) {
			if(!(typeof direct != "undefined" && direct === "true")) {
				var sectionText = currentSection.parent().closest("section").find("h2").first().text();
				if (sectionText) {
					sectionText += ",";
				}
				sectionText += currentSection.closest("section").find("h3,h2").first().text();
				$("#dialogSectionName").text(sectionText);
				
				
				
				
//jd remove question dialog and uncomment funcitons here
hideSections();
$(currentSection).find('h2,h3').first().trigger("click");
window.location.hash = $(currentSection).find("a[id]").first().attr("id");

							
							
							
				$("#dialog-confirm").dialog({
					resizable: false,
					height: "auto",
					width: "auto",
					modal: true,
					buttons: {
						Yes: function() {
							hideSections();
							$(currentSection).find('h2,h3').first().trigger("click");
							window.location.hash = $(currentSection).find("a[id]").first().attr("id");
							$(this).dialog("close");
						},
						No: function() {
							window.location.hash = "";
							$.removeCookie('section');
							$(this).dialog("close");
						}
					},
					open: function() {
						$(this).parent().find('.ui-dialog-buttonpane button:first-child').button({
							icons: {primary: 'ui-icon-check'}
						});
						$(this).parent().find('.ui-dialog-buttonpane button:first-child').next().button({
							icons: {primary: 'ui-icon-close'}
						});
						$(this).parent().find(".ui-dialog-titlebar-close span.ui-icon").removeClass("ui-icon-closethick").addClass("ui-icon-close");
					}
				});
				
				
				
			} else {
				$(currentSection).find('h2,h3').first().trigger("click");
			}
        }
    });


}); // End of jQuery code