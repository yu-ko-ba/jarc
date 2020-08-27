#!/usr/bin/env bash

javac *.java

echo "Main-Class: ${1%.*}" > manifest.mf

jar -cvfm ${1} manifest.mf *.class
