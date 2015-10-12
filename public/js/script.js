$( document ).ready(function() {
  
  $('#nav').click(function() {
    $(this).toggleClass('open');
    });

	$('.bxslider').bxSlider({
  		mode: 'horizontal',
  		useCSS: true,
  		infiniteLoop: false,
  		hideControlOnEnd: false,
  		speed: 3000,
  		auto:true,
  		pause:4000,
  		controls:false
	});
});