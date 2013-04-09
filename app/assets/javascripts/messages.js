$(document).ready(function(){
	var message_id = "";
	$('p.read').click(function(){
		message_id = $(this).attr('id');
	    });
	$(document).on('ajax:success',function(){
		alert("messaggio segnato come letto");
		$('#'+message_id).fadeOut('slow');
		var msg_num = parseInt($('#msg_notification').text().substr(0,2));
		if(msg_num - 1 == 0){
		    $('#msg_notification').fadeOut('slow');
		}
		else{
		    $('#msg_notification').text(msg_num-1+' messages');
		}
	    });
});