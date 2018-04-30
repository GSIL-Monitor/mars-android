#!/bin/bash

SRC_BASE=mars/libraries/mars_android_sdk/
DST_BASE=samples/android/marsSampleChat/wrapper/

SRC_JAVA_PATH=src/main/java/com/tencent/mars/
DST_JAVA_PATH=src/main/java/com/tencent/mars

cp -r ${SRC_BASE}${SRC_JAVA_PATH} ${DST_BASE}${DST_JAVA_PATH}

SRC_LIB_PATH=libs/x86/
DST_LIB_PATH=src/main/jniLibs/x86

cp -r ${SRC_BASE}${SRC_LIB_PATH} ${DST_BASE}${DST_LIB_PATH}


