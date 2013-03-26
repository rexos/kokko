// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap


$(document).ready(function(){
    if($('p.error').attr('id')>0){
	$('#login-modal').modal('show');
    }
    
    if ($('p.done').attr('id') != 0){
	$('#feedback-modal').modal('show');
    }

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