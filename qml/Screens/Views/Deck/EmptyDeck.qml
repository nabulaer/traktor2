import QtQuick 2.0
import QtGraphicalEffects 1.0

Item {
  anchors.fill: parent
  property string deckSizeState: "large"
  property color  deckColor:     colors.colorBgEmpty

  Image {
    id: emptyTrackDeckImage
    anchors.fill:         parent
    anchors.bottomMargin: 18
    anchors.topMargin:    5
    visible:              false // visibility is handled by emptyTrackDeckImageColorOverlay

    source:               "./../images/EmptyDeck.png"
    fillMode:             Image.PreserveAspectFit
  } 

  // Function Deck Color
  ColorOverlay {
    id: emptyTrackDeckImageColorOverlay
    anchors.fill: emptyTrackDeckImage
    visible:      !(deckSizeState == "small")
    color:        deckColor
    source:       emptyTrackDeckImage
  }
}

