#include "systemtray.h"
#include <QMenu>
#include <QSystemTrayIcon>

SystemTray::SystemTray(QObject *parent) : QObject(parent)
{

    // Create a context menu with two items
    QMenu *trayIconMenu = new QMenu();

    QAction * viewWindow = new QAction("Open 1Password", this);
    viewWindow->setIcon(QIcon(":/Img/Basic/pngwing.com.png"));

    QAction * quickWindow = new QAction("Open Quick Access", this);
    quickWindow->setIcon(QIcon(":/Img/Basic/pngwing.com.png"));
    quickWindow->setShortcut(QKeySequence(tr("Ctrl+S")));

    QAction * settingsWindow = new QAction("Settings", this);
    settingsWindow->setIcon(QIcon(":/Img/Basic/pngwing.com.png"));

    QAction * quitAction = new QAction("Quit", this);
    quitAction->setIcon(QIcon(":/Img/Basic/pngwing.com.png"));

    /* to connect the signals clicks on menu items to the appropriate signals for QML.
         * */
    connect(viewWindow, &QAction::triggered, this, &SystemTray::signalShow);
    connect(settingsWindow, &QAction::triggered, this, &SystemTray::showSettingsWindow);
    connect(quickWindow, &QAction::triggered, this, &SystemTray::showQuickAccess);
    connect(quitAction, &QAction::triggered, this, &SystemTray::signalQuit);

    trayIconMenu->addAction(viewWindow);
    trayIconMenu->addAction(quickWindow);
    trayIconMenu->addAction(settingsWindow);
    trayIconMenu->addAction(quitAction);

    /* Initialize the tray icon, icon set, and specify the tooltip
         * */
    trayIcon = new QSystemTrayIcon();
    trayIcon->setContextMenu(trayIconMenu);
    trayIcon->setIcon(QIcon(":/Img/Basic/pngwing.com.png"));
    trayIcon->show();
    trayIcon->setToolTip("Adesh's Device");
    trayIcon->showMessage("Adesh's Device Tray App Created","Click On Tray App to open Device App",QSystemTrayIcon::Information,1000);

    /* Also connect clicking on the icon to the signal handler of the pressing
         * */
    connect(trayIcon, SIGNAL(activated(QSystemTrayIcon::ActivationReason)),
            this, SLOT(iconActivated(QSystemTrayIcon::ActivationReason)));
}

/* The method that handles click on the application icon in the system tray
     * */
void SystemTray::iconActivated(QSystemTrayIcon::ActivationReason reason)
{
    switch (reason){
    case QSystemTrayIcon::Trigger:
        // In the case of pressing the signal on the icon tray in the call signal QML layer
        emit signalIconActivated();
        break;
    default:
        break;
    }
}

void SystemTray::hideIconTray()
{
    trayIcon->hide();
}
