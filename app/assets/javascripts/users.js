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

	// la funzione fa rimbalzare la frecca quando l'utente 
	// entra la prima volta nella app e deve ancora scegliere un training program
	function bounce(x){
	    if (x==1) {
		$('#bounce-arrow').animate({
			marginLeft: "+=40px"
			    }, 500);
    		bounce(0);
	    }
	    else {
		$('#bounce-arrow').animate({
			marginLeft: "-=40px"
			    }, 500);
    		bounce(1);
	    }
	}
	bounce(1);


});

