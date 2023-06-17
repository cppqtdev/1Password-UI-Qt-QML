#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QDebug>
#include <QQmlContext>
#include <QtCore/QUrl>
#include <QtCore/QCommandLineOption>
#include <QtCore/QCommandLineParser>
#include <QStyleHints>
#include <QScreen>
#include <QtQml/QQmlContext>
#include<QIcon>
class Utils : public QObject {
    Q_OBJECT
public:
    Utils(QObject* parent = 0) : QObject(parent) { }
    Q_INVOKABLE static QUrl fromUserInput(const QString& userInput);
};

#include "applicationui.hpp"
int main(int argc, char *argv[])
{
    //! [0]
    QGuiApplication app(argc, argv);
    app.setWindowIcon(QIcon("qrc:/Img/Icons/hire-a-helper.svg"));
    //! [0]
    QGuiApplication::setApplicationDisplayName(QCoreApplication::translate("main","Game Example"));
    ApplicationUI appui;
    QCommandLineParser parser;
    QCoreApplication::setApplicationVersion(QT_VERSION_STR);

    QQmlApplicationEngine engine;
    QQmlContext *context = engine.rootContext();
    context->setContextProperty("myApp", &appui);

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    return app.exec();
}
