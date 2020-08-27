#!/usr/bin/env bash

javac *.java

without_extension=$(basename ${1})
echo "Main-Class: ${without_extension%.*}" > manifest.mf

jar -cvfm ${1} manifest.mf *.class
