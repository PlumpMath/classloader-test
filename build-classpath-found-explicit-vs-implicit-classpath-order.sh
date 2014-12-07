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
find package1/ -type f | xargs jar cf ../lib/package3.jar
find package2/ -type f | xargs jar cmf ../res/Manifest.txt ../lib/package2.jar
)

# call application
# Test1 aus package1.jar
java -classpath lib/package2.jar:lib/package3.jar package2.Test2

# Test1 aus package3.jar
java -classpath lib/package3.jar:lib/package2.jar package2.Test2
java -classpath lib/package3.jar:lib/package2.jar package2.Test2Dynamic
