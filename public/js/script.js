$( document ).ready(function() {

	$('.bxslider').bxSlider({
  		mode: 'horizontal',
  		useCSS: true,
  		infiniteLoop: true,
  		hideControlOnEnd: false,
  		speed: 1000,
  		auto:true,
  		pause:2000
	});

	$(function(){
  		$('#nav').click(function() {
    		$(this).toggleClass('open');
  		});
	});
});