TARGET = kimg_jxr

HEADERS = src/jxr_p.h src/util_p.h
SOURCES = src/jxr.cpp
OTHER_FILES = src/jxr.json

DEFINES += __ANSI__ DISABLE_PERF_MEASUREMENT

INCLUDEPATH += jxrlib/common/include jxrlib/jxrgluelib jxrlib/image/sys

SOURCES += jxrlib/jxrgluelib/JXRGlue.c jxrlib/jxrgluelib/JXRMeta.c jxrlib/jxrgluelib/JXRGluePFC.c jxrlib/jxrgluelib/JXRGlueJxr.c
SOURCES += jxrlib/image/sys/adapthuff.c jxrlib/image/sys/image.c jxrlib/image/sys/strcodec.c jxrlib/image/sys/strPredQuant.c jxrlib/image/sys/strTransform.c jxrlib/image/sys/perfTimerANSI.c
SOURCES += jxrlib/image/decode/decode.c jxrlib/image/decode/postprocess.c jxrlib/image/decode/segdec.c jxrlib/image/decode/strdec.c jxrlib/image/decode/strInvTransform.c jxrlib/image/decode/strPredQuantDec.c jxrlib/image/decode/JXRTranscode.c
SOURCES += jxrlib/image/encode/encode.c jxrlib/image/encode/segenc.c jxrlib/image/encode/strenc.c jxrlib/image/encode/strFwdTransform.c jxrlib/image/encode/strPredQuantEnc.c

TEMPLATE = lib

CONFIG += release skip_target_version_ext strict_c strict_c++ warn_on plugin
CONFIG -= separate_debug_info debug debug_and_release force_debug_info

win32:VERSION = 6.11.0
QMAKE_TARGET_COMPANY = "Daniel Novomesky"
QMAKE_TARGET_PRODUCT = "qt-jxr-image-plugin"
QMAKE_TARGET_DESCRIPTION = "JPEG XR plug-in for Qt6 applications"
QMAKE_TARGET_COPYRIGHT = "Copyright (C) 2024-2025 contributors to KDE project"
QMAKE_TARGET_COMMENTS = "Build using Qt 6.8.1"
