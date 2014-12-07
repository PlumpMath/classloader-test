#!/bin/bash

# clean
rm -rf bin/
mkdir bin
rm -rf lib/
mkdir lib lib/dir1 lib/dir2

# compile java files
find src/ -name "*.java" | xargs javac -d bin/

# package jars
(cd bin
find package1/ -type f | xargs jar cf ../lib/dir1/package1.jar
find package2/ -type f | xargs jar cmf ../res/Manifest2.txt ../lib/dir2/package2.jar
)

# call application
java -classpath lib/dir2/package2.jar package2.Test2
java -classpath lib/dir2/package2.jar package2.Test2Dynamic
