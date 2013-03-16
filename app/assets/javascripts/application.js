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
//= require_tree .

$(document).ready(function(){
    $('div.title').click(function(){
	$(this).next().toggle('slow');
    });

    $('#edit').click(function(){
	var psw = $('#edited_user_new_password').val();
	var psw_confirm = $('#edited_user_new_password_confirm').val();
	var error=false;
	if(psw!=psw_confirm ){
	    error=true;
	    $('div.well').prepend(
		'<div class="alert alert-error">New passwords do not match!</div>'
	    );
	}
	else if (psw.length==0 || psw_confirm.length==0){
		error=true;
	    $('div.row').prepend(
		'<div class="alert alert-error">Passwords cannot be blank!</div>'
	    );
	    $('div.alert').fadeOut(3000);
	}
	if(error){
	    return false;
	}
    });

    $(function() {
	window.updateIframe = function() {
	    var h = $(window).height();
	    $("#iframe").height(0.5*h);
	}
	window.updateIframe();
	window.resize(window.updateIframe);
    });
});	