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
    $("#img_barbara").css "filter", "grayscale(100%)"
    $("#img_barbara").css "-webkit-filter", "grayscale(100%)"
    $("#img_barbara").css "-moz-filter", "grayscale(100%)"

  barbara_color: ->
    $("#img_barbara").css "filter", ""
    $("#img_barbara").css "-webkit-filter", ""
    $("#img_barbara").css "-moz-filter", ""

  birgit_grey: ->
    $("#img_birgit").css "filter", "grayscale(100%)"
    $("#img_birgit").css "-webkit-filter", "grayscale(100%)"
    $("#img_birgit").css "-moz-filter", "grayscale(100%)"

  birgit_color: ->
    $("#img_birgit").css "filter", ""
    $("#img_birgit").css "-webkit-filter", ""
    $("#img_birgit").css "-moz-filter", ""
