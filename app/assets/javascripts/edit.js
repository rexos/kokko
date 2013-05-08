$(document).ready(function(){
    $('#edit').click(function(){
	var psw = $('#edited_user_new_password').val();
	var psw_confirm = $('#edited_user_new_password_confirm').val();
	var error=false;
	if( psw != psw_confirm ){
	    error=true;
	    $('div.modal-body').append(
		'<div class="alert alert-error center" style="width:90%">Le nuove passwords non corrispondono!</div>'
	    );
	    $('div.alert').fadeOut(3000);
	}
	else if (psw.length==0 || psw_confirm.length==0){
	    error=true;
	    $('div.modal-body').append(
		'<div class="alert alert-error center" style="width:90%">Le passwords non possono rimanere bianche!</div>'
	    );
	    $('div.alert').fadeOut(3000);
	}
	if(error){
	    return false;
	}
    });
});