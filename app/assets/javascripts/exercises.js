//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require edit
$(document).ready(function(){
    $(function() {
	window.updateIframe = function() {
	    var h = $(window).height();
	    $("#iframe").height(0.5*h);
	}
	window.updateIframe();
	window.resize(window.updateIframe);
    });
});