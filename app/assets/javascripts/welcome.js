//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap

$(document).ready(function(){
    if($('p.error').attr('id')>0){
	$('#login-modal').modal('show');
    }

    $(document).on('ajax:success', function(){
	$('div.modal-body').prepend(
	    '<div class="alert alert-success"><strong>La tua registrazione è avvenuta correttamente verrai automaticamente reindirizzato alla tua home page</strong></div>'
	);
	$('div.alert-success').fadeOut(5000,function(){
	    window.location = '/users/home_utente';
	});
    });

    $(document).on('ajax:error',function(){
	$('div.modal-body').prepend(
	    '<div class="alert alert-error"><strong>Error subscribing</strong></div>'
	);
	$('div.alert-error').fadeOut(3000);
    });
});