$(document).ready(function(){
	// la funzione fa rimbalzare la frecca quando l'utente 
	// entra la prima volta nella app e deve ancora scegliere un training program
	function bounce(x){
	    if (x==1) {
		$('#bounce-arrow').animate({
			marginLeft: "+=40px"
			    }, 500);
    		bounce(0);
	    }
	    else {
		$('#bounce-arrow').animate({
			marginLeft: "-=40px"
			    }, 500);
    		bounce(1);
	    }
	}
	bounce(1);
});
