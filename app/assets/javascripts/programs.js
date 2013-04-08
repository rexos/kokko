$(document).ready(function(){
    $(document).on('ajax:success', function(){
	$('#feedback-modal').children('div.modal-body').append('<div class="alert alert-success center" style="width:90%"><h4><strong>Feedback ricevuto con successo!<br />Grazie mille per la collaborazione!</strong><h4></div>');
	$('button.btn-success').fadeOut('slow',function(){
	    $('div.modal-footer').prepend('<button id="close" class="btn btn-success btn-large" style="display:none"><i class="icon-ok"></i>&nbsp;&nbsp;Chiudi</button>');
	    $('#close').fadeIn('slow');
	    $('#close').click(function(){
		$('#feedback-modal').modal('hide');
	    });
	});
    });

    if ($('p.done').attr('id') != 0){
	$('#feedback-modal').modal('show');
    }
    
    var time = parseInt($('p.time').text());

    setInterval(countdown,1000);
    function countdown(){
	var minutes = parseInt(time / 60);
	var seconds = time % 60;
	time = time-1;
	var colon = " : ";
	if (seconds < 10){
	    colon = " : 0"
	}
	$('p.time').text(minutes+colon+seconds);
    }
    


    $(".meter > span").each(function() {
    	$(this)
    	.data("origWidth", $(this).width())
    	.width(0)
    	.animate({
    		width: $(this).data("origWidth")
    	}, 1200);
    });

});