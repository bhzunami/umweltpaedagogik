$(document).on "turbolinks:load", (event) ->
  new NavBarController()
  about = new AboutUs_Controller()
  
  $("#accordion").accordion
    heightStyle: "content"
    navigation: true
    active: false
    collapsible: true
 
  $(".fancybox").fancybox (e) ->
    padding: 0
    openEffect: "elastic"

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

  $("#video_6").prettyEmbed
    videoID: "GLgh9h2ePYw"
    useFitVids: false
    playerControls: true
    playerInfo: false

  $("#barbara").click (e) ->
    about.barbara()
    e.preventDefault()

  $("#birgit").click (e) ->
    about.birgit()
    e.preventDefault()

  $("#doris").click (e) ->
    about.doris()
    e.preventDefault()
