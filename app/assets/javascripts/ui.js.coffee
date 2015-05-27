$ ->

	$('#edit').editable inlineMode: false

	$('#hamburger').click ->
		$('#mobile-nav').slideToggle(200)
	$('#close').click ->
		$('#mobile-nav').slideToggle(300)

	# Set hero unit height
	viewportHeight = $(window).height()

	$('#hero-unit.lander').height(viewportHeight-65)


	$('#nav ul li:has(ul)').addClass('has-subnav')
