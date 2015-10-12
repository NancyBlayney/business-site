$( document ).ready(function() {
  
  $(function(){
      $('#nav').click(function() {
        $(this).toggleClass('open');
      });
  });

	$('.bxslider').bxSlider({
  		mode: 'horizontal',
  		useCSS: true,
  		infiniteLoop: true,
  		hideControlOnEnd: false,
  		speed: 1000,
  		auto:true,
  		pause:2000
	});
});