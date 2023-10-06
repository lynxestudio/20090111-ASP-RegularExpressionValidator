#!/bin/sh
mcs /t:library -r:System.Web RegularExpression.aspx.cs
mv RegularExpression.aspx.dll bin
