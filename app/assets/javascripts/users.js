$(document).ready(function(){
	$('p.answer').click(function(){
		var destination= $(this).attr('data-destination');
		$('#new-message-modal').modal('toggle');
		$('#message_dest').val(destination);
	    });


	$('li').click(function(){
		$('li.active').children('a').children('h4').children('i').toggleClass('icon-folder-close-alt icon-folder-open-alt');
		$(this).children('a').children('h4').children('i').toggleClass('icon-folder-close-alt icon-folder-open-alt');
	});
		
	var stronzo = setInterval(function(){
		$.ajax({
			type: "GET",
			url: "/messages/get_new_messages"
		    });
	    }, 3000);
});

