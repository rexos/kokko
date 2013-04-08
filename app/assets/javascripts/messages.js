$(document).ready(function(){
	var message_id = "";
	$('p.read').click(function(){
		message_id = $(this).attr('id');
	    });
	$(document).on('ajax:success',function(){
		alert("messaggio segnato come letto");
		$('#'+message_id).fadeOut('slow');
	    });
});