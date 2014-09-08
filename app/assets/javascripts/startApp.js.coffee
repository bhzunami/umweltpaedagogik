$(document).on "ready page:load", ->
  new NavBarController()
  about = new AboutUs_Controller()
  $("#accordion").accordion
    heightStyle: "content"
    navigation: true
    active: false
    collapsible: true

  $(".fancybox").fancybox
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

  $("#barbara").click ->
    about.barbara()
    return false

  $("#birgit").click ->
    about.birgit()
    return false