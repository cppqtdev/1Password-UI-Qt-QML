#ifndef APPLICATIONUI_HPP
#define APPLICATIONUI_HPP

#include <QObject>

class ApplicationUI : public QObject
{
    Q_OBJECT

public:
     ApplicationUI(QObject *parent = 0);
     Q_PROPERTY(bool darkTheme READ darkTheme WRITE setDarkTheme NOTIFY darkThemeChanged)

     Q_INVOKABLE
     QStringList swapThemePalette();

     Q_INVOKABLE
     QStringList defaultThemePalette();

     Q_INVOKABLE
     QStringList primaryPalette(const int paletteIndex);

     Q_INVOKABLE
     QStringList accentPalette(const int paletteIndex);

     Q_INVOKABLE
     QStringList defaultPrimaryPalette();

     Q_INVOKABLE
     QStringList defaultAccentPalette();

     bool darkTheme() const;

signals:
     void darkThemeChanged();

public slots:
     void setDarkTheme(bool newDarkTheme);

private:
     bool mIsDarkTheme;
     int mPrimaryPalette;
     int mAccentPalette;
     bool m_darkTheme{false};
};

#endif // APPLICATIONUI_HPP
