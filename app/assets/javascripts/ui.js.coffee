$ ->

	$('#hamburger').click ->
		$('#mobile-nav').slideToggle(200)
	$('#close').click ->
		$('#mobile-nav').slideToggle(300)

	# Set hero unit height
	viewportHeight = $(window).height()



	$('#nav ul li:has(ul)').addClass('has-subnav')

	$('#new').click ->
		$('#overlay').fadeToggle(300)
		$(this).toggleClass('rotate')
		$('.admin-modal').toggleClass('onscreen')
