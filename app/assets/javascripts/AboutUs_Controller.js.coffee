class @AboutUs_Controller
    constructor: ->
      $("#cv_barbara").hide()
      $("#cv_birgit").hide()
      $("#cv_doris").hide()

    show_barbara: ->
      $("#cv_birgit").hide()
      $("#cv_doris").hide()
      $("#cv_barbara").fadeIn( "fast" )
      @barbara_color()
      @birgit_grey()
      @doris_grey()

    hide_barbara: ->
      $("#cv_barbara").fadeOut( "fast" )
      @birgit_color()
      @doris_color()

    show_birgit: ->
      $("#cv_barbara").hide()
      $("#cv_doris").hide()
      $("#cv_birgit").fadeIn( "fast" )
      @barbara_grey()
      @doris_grey()
      @birgit_color()

    hide_birgit: ->
      $("#cv_birgit").fadeOut( "fast" )
      @barbara_color()
      @doris_color()

    show_doris: ->
      $("#cv_barbara").hide()
      $("#cv_birgit").hide()
      $("#cv_doris").fadeIn( "fast" )
      @barbara_grey()
      @birgit_grey()
      @doris_color()  

    hide_doris: ->
      $("#cv_doris").fadeOut( "fast" )
      @barbara_color()
      @birgit_color()

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

    doris: ->
      if $("#cv_doris").is(":visible")
        @hide_doris()
      else
        @show_doris()

    #Image manipulation
    barbara_grey: ->
      #$("#barbara").hide()
      $("#barbara").css "filter", "grayscale(100%)"
      $("#barbara").css "-webkit-filter", "grayscale(100%)"
      $("#barbara").css "-moz-filter", "grayscale(100%)"

    barbara_color: ->
      #$("#barbara").show()
      $("#barbara").css "filter", ""
      $("#barbara").css "-webkit-filter", ""
      $("#barbara").css "-moz-filter", ""

    birgit_grey: ->
      #$("#birgit").hide()
      $("#birgit").css "filter", "grayscale(100%)"
      $("#birgit").css "-webkit-filter", "grayscale(100%)"
      $("#birgit").css "-moz-filter", "grayscale(100%)"

    birgit_color: ->
      #$("#birgit").show()
      $("#birgit").css "filter", ""
      $("#birgit").css "-webkit-filter", ""
      $("#birgit").css "-moz-filter", ""

    doris_grey: ->
      #$("#doris").hide()
      $("#doris").css "filter", "grayscale(100%)"
      $("#doris").css "-webkit-filter", "grayscale(100%)"
      $("#doris").css "-moz-filter", "grayscale(100%)"

    doris_color: ->
      #$("#doris").show()
      $("#doris").css "filter", ""
      $("#doris").css "-webkit-filter", ""
      $("#doris").css "-moz-filter", ""
