$(document).ready(function(){
    $('#edit').click(function(){
	var psw = $('#edited_user_new_password').val();
	var psw_confirm = $('#edited_user_new_password_confirm').val();
	var error=false;
	if(psw!=psw_confirm ){
	    error=true;
	    $('div.modal-body').append(
		'<div class="alert alert-error center" style="width:90%">New passwords do not match!</div>'
	    );
	    $('div.alert').fadeOut(3000);
	}
	else if (psw.length==0 || psw_confirm.length==0){
	    error=true;
	    $('div.modal-body').append(
		'<div class="alert alert-error center" style="width:90%">Passwords cannot be blank!</div>'
	    );
	    $('div.alert').fadeOut(3000);
	}
	if(error){
	    return false;
	}
    });
});