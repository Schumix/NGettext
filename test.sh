#!/bin/bash

git submodule update --init --recursive
xbuild /p:Configuration="Debug" src/NGettext.sln /flp:LogFile=xbuild.log;Verbosity=Detailed

#cd src/NGettext.Tests/bin/Debug
#nunit-console Tests.dll
