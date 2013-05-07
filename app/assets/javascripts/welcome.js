$(document).ready(function(){
	if(parseInt($('p.error').attr('id')) > 0){
	    $('#login-modal').modal('show');
	}
});