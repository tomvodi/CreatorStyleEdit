DEFINES += CREATORSTYLEEDIT_LIBRARY

# CreatorStyleEdit files

SOURCES += creatorstyleeditplugin.cpp \
    styleeditor.cpp \
    colorselectorwidget.cpp \
    applicationproxystyle.cpp

HEADERS += creatorstyleeditplugin.h \
        creatorstyleedit_global.h \
        creatorstyleeditconstants.h \
    styleeditor.h \
    colorselectorwidget.h \
    applicationproxystyle.h \
    defines.h

# Qt Creator linking

## set the QTC_SOURCE environment variable to override the setting here
QTCREATOR_SOURCES = $$(QTC_SOURCE)
isEmpty(QTCREATOR_SOURCES):QTCREATOR_SOURCES=/path/to/creator/sources

## set the QTC_BUILD environment variable to override the setting here
IDE_BUILD_TREE = $$(QTC_BUILD)
isEmpty(IDE_BUILD_TREE):IDE_BUILD_TREE=/path/to/build/environment

## uncomment to build plugin into user config directory
## <localappdata>/plugins/<ideversion>
##    where <localappdata> is e.g.
##    "%LOCALAPPDATA%\QtProject\qtcreator" on Windows Vista and later
##    "$XDG_DATA_HOME/data/QtProject/qtcreator" or "~/.local/share/data/QtProject/qtcreator" on Linux
##    "~/Library/Application Support/QtProject/Qt Creator" on Mac
# USE_USER_DESTDIR = yes

PROVIDER = CreatorStyleEdit

###### If the plugin can be depended upon by other plugins, this code needs to be outsourced to
###### <dirname>_dependencies.pri, where <dirname> is the name of the directory containing the
###### plugin's sources.

QTC_PLUGIN_NAME = CreatorStyleEdit
QTC_LIB_DEPENDS += \
    # nothing here at this time

QTC_PLUGIN_DEPENDS += \
    coreplugin \
    debugger

QTC_PLUGIN_RECOMMENDS += \
    # optional plugin dependencies. nothing here at this time

###### End _dependencies.pri contents ######

include($$QTCREATOR_SOURCES/src/qtcreatorplugin.pri)

FORMS += \
    styleeditor.ui \
    colorselectorwidget.ui

RESOURCES += \
    styles/stlyes.qrc

