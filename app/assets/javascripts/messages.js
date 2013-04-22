$(document).ready(function(){
	$('button.btn-answer').click(function(){
		alert("dai ostia");
	    });
	
	$(document).on('ajax:success',function(){
		alert("messaggio segnato come letto");
	    });
       
});