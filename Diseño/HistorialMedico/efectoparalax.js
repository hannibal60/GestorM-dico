$(document).ready(function(){
 
	$(window).scroll(function(){
		var barra = $(window).scrollTop();
        var posicion = barra * 0.10;
        var ps=barra*0;
 
		$('body').css({
			'background-position': '0-' + posicion + 'px'
        });
        
	});
 
});