$(document).ready(function(){
	window.updateIframe = function() {
	    var h = $(window).height();
	    $(".video").height(0.5*h);
	}
	window.updateIframe();
	window.resize(window.updateIframe);
});