class @AboutUs_Controller
  constructor: ->
    $("#cv_barbara").hide()
    $("#cv_birgit").hide()

  show_barbara: ->
    $("#cv_birgit").hide()
    $("#cv_barbara").fadeIn( "fast" )
    @barbara_color()
    @birgit_grey()


  hide_barbara: ->
    $("#cv_barbara").fadeOut( "fast" )
    @birgit_color()

  show_birgit: ->
    $("#cv_barbara").hide()
    $("#cv_birgit").fadeIn( "fast" )
    @barbara_grey()
    @birgit_color()

  hide_birgit: ->
    $("#cv_birgit").fadeOut( "fast" )
    @barbara_color()

  barbara: ->
    if $("#cv_barbara").is(":visible")
      @hide_barbara()
    else
      @show_barbara()

  birgit: ->
    if $("#cv_birgit").is(":visible")
      @hide_birgit()
    else
      @show_birgit()


  #Image manipulation
  barbara_grey: ->
    $("#barbara").css "filter", "grayscale(100%)"
    $("#barbara").css "-webkit-filter", "grayscale(100%)"
    $("#barbara").css "-moz-filter", "grayscale(100%)"

  barbara_color: ->
    $("#barbara").css "filter", ""
    $("#barbara").css "-webkit-filter", ""
    $("#barbara").css "-moz-filter", ""

  birgit_grey: ->
    $("#birgit").css "filter", "grayscale(100%)"
    $("#birgit").css "-webkit-filter", "grayscale(100%)"
    $("#birgit").css "-moz-filter", "grayscale(100%)"

  birgit_color: ->
    $("#birgit").css "filter", ""
    $("#birgit").css "-webkit-filter", ""
    $("#birgit").css "-moz-filter", ""
