/* 
 * OBE Template 2013: Version 3.3.3 Last updated 8/20/2013
 * Author: Glenn Stokol, Marcie Young, Matthieu Heimer
 */
(function() {
    if (!window.console) {
        window.console = {
            log: function() {
            }
        };
    }
}());

function report(data) {
    var baseURL = document.location.protocol + "//apex.oracle.com/pls/apex/oll_rest/oll/content/";
    $.ajax({
        type: "POST",
        url: baseURL + data.cid,
        contentType: "text/plain",
        data: JSON.stringify(data),
        dataType: "text",
        complete: function(jqXHR, textStatus) {
            console.log("status:" + textStatus);
        }
    });
}

var qParams = $.getQuery();
if (qParams["cid"] && qParams["ssid"]) {
    console.log("protocol:" + document.location.protocol);
    console.log("Adding hooks for data capture");
    // sectionOpened is called when the user begins to read a section
    console.log("Supports CORS:" + $.support.cors);
    $(document).on("sectionOpened", function(evt, data) {
        var analytics = {};
        analytics.SECTIONID = data.id;
        analytics.SECTIONTITLE = data.section;
        analytics.SSID = qParams["ssid"];
        analytics.cid = qParams["cid"];
        analytics.ACTION = evt.type;
        console.log(JSON.stringify(analytics));
        report(analytics);
    });

    // sectionClosed is called when the user stops reading a section
    $(document).on("sectionClosed", function(evt, data) {
        var analytics = {};
        analytics.SECTIONID = data.id;
        analytics.SECTIONTITLE = data.section;
        analytics.SSID = qParams["ssid"];
        analytics.cid = qParams["cid"];
        analytics.ACTION = evt.type;
        console.log(JSON.stringify(analytics));
        report(analytics);
    });

    // loadOBE occurs when the page is loaded
    $(document).on("loadOBE", function(evt, data) {
        var analytics = {};
        analytics.SSID = qParams["ssid"];
        analytics.USERAGENT = navigator.userAgent;
        analytics.cid = qParams["cid"];
        analytics.ACTION = evt.type;
        console.log(JSON.stringify(analytics));
        report(analytics);
    });

//    // pauseOBE occurs when switch to another tab or window
//    // a user may or maybe not be reading a section even if there is no focus
//    // use unloadOBE or lack of heartbeat to see if the OBE is closed
//    $(document).on("pauseOBE", function(evt, data) {
//        // do nothing
//    });
//
//    // resumeOBE occurs when focus is restored to the window
//    $(document).on("resumeOBE", function(evt, data) {
//        // do nothing
//    });
//
//    // unloadOBE called when leaving the OBE, users might skip this - see heartbeat
//    $(document).on("unloadOBE", function(evt, data) {
//        // do nothing
//    });
//
//    // called once a minute with OBE title and the section name (if opened)
//    $(document).on("heartbeat", function(evt, data) {
//        // do nothing, too chatty
//    });
}