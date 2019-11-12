$(document).ready(function(){
	var altura = $('.ContR').offset().top;
	
	$(window).on('scroll', function(){
		if ( $(window).scrollTop() > altura ){
			$('.ContR').addClass('ContR-fixed');
			$('.ContRB').addClass('ContRB-fixed');
		} else {
			$('.ContR').removeClass('ContR-fixed');
			$('.ContRB').removeClass('ContRB-fixed');
		}
	});
 
});