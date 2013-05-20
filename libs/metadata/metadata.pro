#include (../libs.pri)
TEMPLATE = lib
QT += widgets

win32 {
    DEFINES += METADATA_DLL
}

#LIBS += -ldataobjects
win32: LIBS += -L$$PWD/../../build-libs-Qt_5_0_2-Debug/dataobjects/debug/ -ldataobjects
INCLUDEPATH += ../dataobjects

# Input
HEADERS += preference.h \
    abstractmetadataloader.h \
    audiometadata.h \
    metadatawidget.h \
    simpledelegate.h \
    timedisplay.h \
    preferencecombo.h \
    metadataexport.h \
    metadataloaderprogresswidget.h \
    metadatavalue.h \
    metadataobject.h

SOURCES += preference.cpp \
    metadatawidget.cpp \
    simpledelegate.cpp \
    timedisplay.cpp \
    preferencecombo.cpp \
    metadatavalue.cpp \
    metadataobject.cpp \
    metadataloaderprogresswidget.cpp \
    abstractmetadataloader.cpp
 
 
FORMS += metadatawidget.ui
OTHER_FILES += README.txt MetaDataWidget.ui

