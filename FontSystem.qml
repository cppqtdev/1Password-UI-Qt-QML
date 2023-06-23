pragma Singleton
import QtQuick 2.9
import QtQuick.Controls 2.5

Item {

    property var getAwesomeBrand: fontAwesomeBrand
    property var getAwesomeRegular: fontAwesomeRegular
    property var getAwesomeLight: fontAwesomeLight
    property var getAwesomeSolid: fontAwesomeSolid
    property var getContentFont: contentFontMedium
    property var getContentFontBold: contentFontBold
    property var getContentFontMedium: contentFontMedium
    property var getContentFontLight: contentFontLight
    property var getFontSize: fontSize

    QtObject {
        id: fontSize
        readonly property int       h1 : 32
        readonly property int       h2 : 24
        readonly property double    h3 : 18.72
        readonly property int       h4 : 16
        readonly property double    h5 : 13.28
        readonly property double    h6 : 10.72

        readonly property int content : 14
    }

    FontLoader {
        id: fontAwesomeBrand
        source: "qrc:/fonts/Font Awesome 5 Brands-Regular-400.otf"
    }

    FontLoader {
        id: fontAwesomeRegular
        source: "qrc:/fonts/Font Awesome 5 Pro-Regular-400.otf"
    }

    FontLoader {
        id: fontAwesomeLight
        source: "qrc:/fonts/Font Awesome 5 Pro-Light-300.otf"
    }


    FontLoader {
        id: fontAwesomeSolid
        source: "qrc:/fonts/Font Awesome 5 Pro-Solid-900.otf"
    }

    FontLoader {
        id: contentFontLight
        source: "qrc:/fonts/Nunito-Light.ttf"
    }

    FontLoader {
        id: contentFontBold
        source: "qrc:/fonts/Nunito-Bold.ttf"
    }


    FontLoader {
        id: contentFontMedium
        source: "qrc:/fonts/Nunito-Medium.ttf"
    }

}
