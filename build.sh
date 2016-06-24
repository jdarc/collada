#!/bin/bash

rm -fr org
rm -fr collada.jar

xjc.exe -extension simple_mode.xml -b collada_binding.xml -p org.khronos.collada collada_schema_1_5.xsd

javac -cp . org/khronos/collada/*.java

find . -name "*.java" -type f -delete

jar cf collada.jar org

rm -fr org
