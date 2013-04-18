$(document).ready(function(){
	$('li').click(function(){
		$('li.active').children('a').children('h4').children('i').toggleClass('icon-folder-close-alt icon-folder-open-alt');
		$(this).children('a').children('h4').children('i').toggleClass('icon-folder-close-alt icon-folder-open-alt');
	});
		
	var stronzo = setInterval(function(){
		$.ajax({
			type: "GET",
			url: "/messages/get_new_messages"
		    });
	    }, 5000);
});

