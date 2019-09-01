class @AboutUs_Controller
    @EMPLOYEES: ['barbara', 'birgit', 'doris', 'david', 'michelle', 'sabine']
    constructor: ->
      for employee in AboutUs_Controller.EMPLOYEES
        hide_cv(employee)

    show_employee = (name) ->
      for employee in AboutUs_Controller.EMPLOYEES
        if (employee != name)
          hide_cv(employee)
          set_grey_color(employee)
        else
          show_cv(employee)
          set_color(employee)

    hide_employee = (name) ->
      for employee in AboutUs_Controller.EMPLOYEES
        if (employee != name)
          set_color(employee)
        else
          hide_cv(employee)

    set_grey_color = (name) ->
      $("#" + name).css "filter", "grayscale(100%)"
      $("#" + name).css "-webkit-filter", "grayscale(100%)"
      $("#" + name).css "-moz-filter", "grayscale(100%)"

    set_color = (name) ->
      $("#" + name).css "filter", ""
      $("#" + name).css "-webkit-filter", ""
      $("#" + name).css "-moz-filter", ""

    show_cv = (name) ->
      cv = "#cv_" + name
      $(cv).fadeIn( "fast" )

    hide_cv = (name) ->
      $("#cv_" + name).hide()
    
    barbara: ->
      if $("#cv_barbara").is(":visible")
        hide_employee('barbara')
      else
        show_employee('barbara')

    birgit: ->
      if $("#cv_birgit").is(":visible")
        hide_employee('birgit')
      else
        show_employee('birgit')

    doris: ->
      if $("#cv_doris").is(":visible")
        hide_employee('doris')
      else
        show_employee('doris')
      
    david: ->
      if $("#cv_david").is(":visible")
        hide_employee('david')
      else
        show_employee('david')

    michelle: ->
      if $("#cv_michelle").is(":visible")
        hide_employee('michelle')
      else
        show_employee('michelle')

    sabine: ->
      if $("#cv_sabine").is(":visible")
        hide_employee('sabine')
      else
        show_employee('sabine')