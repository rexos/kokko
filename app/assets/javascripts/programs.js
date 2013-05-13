$(document).ready(function(){
    $(document).on('ajax:success', function(){
	$('#feedback-modal').children('div.modal-body').append('<div class="alert alert-success center" style="width:90%"><h4><strong>Feedback ricevuto con successo!<br />Grazie mille per la collaborazione!</strong><h4></div>');
	$('#feedback-modal').children('div.modal-footer').children('button.btn-success').fadeOut('slow',function(){
	    $('div.modal-footer').prepend('<button id="close" class="btn btn-success btn-large" data-dismiss="modal" style="display:none"><i class="icon-ok"></i>&nbsp;&nbsp;Chiudi</button>');
	    $('#close').fadeIn('slow');
	});
    });

    if ($('p.done').attr('id') != 0){
	$('#feedback-modal').modal('show');
    }
    
    
    $('.medal').each(function() {
    	$(this)
    	.fadeIn('slow')});

    $('.cup').each(function() {
        $(this)
        .fadeIn('slow')});

    $(".meter > span").each(function() {
    	$(this)
    	.data("origWidth", $(this).width())
    	.width(0)
    	.animate({
    		width: $(this).data("origWidth")
    	}, 1200);
    });

    $('span.star').click(function(){
        var star_id = parseInt($(this).attr('id').substr(4,4));
	    $('#rating_field').attr('value',star_id);
    });

    	$('li').click(function(){
		$('li.active').children('a').children('h4').children('i').toggleClass('icon-folder-close-alt icon-folder-open-alt');
		$(this).children('a').children('h4').children('i').toggleClass('icon-folder-close-alt icon-folder-open-alt');
	});


});