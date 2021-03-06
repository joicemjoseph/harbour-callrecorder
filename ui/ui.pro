#    Call Recorder for SailfishOS
#    Copyright (C) 2014  Dmitriy Purgin <dpurgin@gmail.com>

#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.

#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.

#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.

include(../common.pri)

TARGET = $${PACKAGE}

CONFIG += sailfishapp qml_debug
PKGCONFIG += flac

QT += core quick qml multimedia sql

INCLUDEPATH += ../libcallrecorder/include

LIBS += -L../libcallrecorder -lcallrecorder

HEADERS += \
    src/filerelocationworker.h \
    src/filesystemhelper.h

SOURCES += \
    src/filerelocationworker.cpp \
    src/filesystemhelper.cpp \
    src/main.cpp

RESOURCES += ui.qrc

OTHER_FILES += \
    harbour-callrecorder.desktop \
    translations/*.ts \
    qml/pages/AboutPage.qml \
    qml/cover/CoverPage.qml \
    qml/pages/DirectoryNameDialog.qml \
    qml/pages/DirectoryPickerDialog.qml \
    qml/pages/EventsDelegate.qml \
    qml/pages/EventsPage.qml \
    qml/pages/EventsPicker.qml \
    qml/pages/EventPage.qml \
    qml/pages/LicensePage.qml \
    qml/pages/SettingsPage.qml \
    qml/main.qml

images.files = \
    images/icon-cover-start-recorder.png \
    images/icon-cover-stop-recorder.png
images.path = /usr/share/$${PACKAGE}/images

INSTALLS += images

# to disable building translations every time, comment out the
# following CONFIG line
#CONFIG += sailfishapp_i18n
#TRANSLATIONS += translations/ui-de.ts



