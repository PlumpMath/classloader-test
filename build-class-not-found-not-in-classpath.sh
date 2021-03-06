#!/bin/bash

# clean
rm -rf bin/
mkdir bin
rm -rf lib/
mkdir lib

# compile java files
find src/ -name "*.java" | xargs javac -d bin/

# package jars
(cd bin
find package1/ -type f | xargs jar cf ../lib/package1.jar
find package2/ -type f | xargs jar cf ../lib/package2.jar
)

# call application
java -classpath lib/package2.jar package2.Test2
java -classpath lib/package2.jar package2.Test2Dynamic
