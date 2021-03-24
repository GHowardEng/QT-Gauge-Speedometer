#-------------------------------------------------
#
# Project created by QtCreator 2014-11-08T02:11:29
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = SpeedGauge
TEMPLATE = app

INCLUDEPATH = ../../\

SOURCES += main.cpp\
        ../../qcgaugewidget.cpp \
        mainwindow.cpp
    #../../source/qcgaugewidget.cpp \

HEADERS  += mainwindow.h \
    ../../qcgaugewidget.h
    #../../source/qcgaugewidget.h \

FORMS    += mainwindow.ui

