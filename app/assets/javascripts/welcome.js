//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap

$(document).ready(function(){
    if($('p.error').attr('id')>0){
	$('#login-modal').modal('show');
    }

    $(document).on('ajax:error',function(){
	$('div.modal-body').prepend(
	    '<div class="alert alert-error"><strong>Error subscribing</strong></div>'
	);
    });
});