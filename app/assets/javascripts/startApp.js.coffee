$(document).on "ready page:load", ->
	new NavBarController()
	$("#accordion").accordion
  	heightStyle: "content"
  	navigation: true
  	active: false
  	collapsible: true
