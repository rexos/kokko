$(document).ready(function(){
	$('p.comments').click(function(){
		$(this).next().slideToggle('fast');
		$(this).children('i').toggleClass('icon-arrow-down icon-arrow-up');
	    });
	$('p.answer').click(function(){
		var destination= $(this).attr('data-destination');
		$('#new-message-modal').modal('toggle');
		$('#message_dest').val(destination);
	    });
		
	var new_messages = setInterval(function(){
		$.ajax({
			type: "GET",
			url: "/messages/get_new_messages"
		    });
	    }, 3000);
	
});

