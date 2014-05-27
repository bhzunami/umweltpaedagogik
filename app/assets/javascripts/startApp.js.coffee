$(document).on "ready page:load", ->
	new NavBarController()
	$("#accordion").accordion
  	heightStyle: "content"
  	navigation: true
  	active: false
  	collapsible: true

  $("#accordion2").accordion
  	heightStyle: "content"
  	navigation: true
  	active: false
  	collapsible: true

  $("#accordion3").accordion
  	heightStyle: "content"
  	navigation: true
  	active: false
  	collapsible: true

  $("#accordion4").accordion
  	heightStyle: "content"
  	navigation: true
  	active: false
  	collapsible: true
