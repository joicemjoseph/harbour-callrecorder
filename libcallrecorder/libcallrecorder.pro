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

TEMPLATE = lib

TARGET = callrecorder

target.path = /usr/share/$${PACKAGE}/lib

INSTALLS += target

QT += core sql multimedia

DEFINES += LIBCALLRECORDER

SOURCES += \
    src/database.cpp \
    src/callrecorderexception.cpp \
    src/sqlcursor.cpp \
    src/eventstablemodel.cpp \
    src/settings.cpp

HEADERS += \
    include/libcallrecorder/database.h \
    include/libcallrecorder/eventstablemodel.h \
    src/config.h \
    src/database.h \
    src/callrecorderexception.h \
    src/sqlcursor.h \
    src/eventstablemodel.h \
    src/settings.h \
    include/libcallrecorder/sqlcursor.h \
    include/libcallrecorder/callrecorderexception.h \
    include/libcallrecorder/settings.h

