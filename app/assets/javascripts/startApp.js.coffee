$(document).on "ready page:load", ->
  new NavBarController()
  about = new AboutUs_Controller()
  
  $("#accordion").accordion
    heightStyle: "content"
    navigation: true
    active: false
    collapsible: true

  $('.image-box').magnificPopup
    type: 'image'
    delegate: 'a'
    gallery:
      enabled:true
    mainClass: 'mfp-with-zoom'
    zoom:
      enabled: true
      duration: 300
      easing: 'ease-in-out'
      opener: (openerElement) ->
        if openerElement.is('img') then openerElement else openerElement.find('img')

  $("#video_1").prettyEmbed
    videoID: "Ucx33NbxOCc"
    useFitVids: false
    playerControls: true
    playerInfo: false

  $("#video_2").prettyEmbed
    videoID: "3A0rxt3Byjo"
    useFitVids: false
    playerControls: true
    playerInfo: false

  $("#video_3").prettyEmbed
    videoID: "Eo10VLDji7s"
    useFitVids: false
    playerControls: true
    playerInfo: false

  $("#video_4").prettyEmbed
    videoID: "ZbhSsodwfns"
    useFitVids: false
    playerControls: true
    playerInfo: false

  $("#video_5").prettyEmbed
    videoID: "XhS9X-oKz64"
    useFitVids: false
    playerControls: true
    playerInfo: false

  $("#barbara").click (e) ->
    about.barbara()
    e.preventDefault()

  $("#doris").click (e) ->
    about.doris()
    e.preventDefault()

  $("#david").click (e) ->
    about.david()
    e.preventDefault()

  $("#michelle").click (e) ->
    about.michelle()
    e.preventDefault()

  $("#sabine").click (e) ->
    about.sabine()
    e.preventDefault()
