// JavaScript Document
var metaParams = 'width=device-width, initial-scale=1, maximum-scale=2, minimum-scale=1';
if (navigator.userAgent.match(/Android|Silk/i)) {
 metaParams += ", user-scalable=no"
}
document.write('<meta name="viewport" content="' + metaParams + '" />');  
