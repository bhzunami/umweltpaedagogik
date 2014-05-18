$(document).on "ready page:load", ->
	new NavBarController()
	$("#accordion").accordion
  	autoHeight: true
  	navigation: true
  	#active: false
  	#collapsible: true
