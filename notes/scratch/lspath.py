#!/usr/bin/env python

* import os
* paths = os.environ["PATH"].split(":")
for p in paths:    print(p)    print()    print("\n".join(sorted(os.listdir(p))))    print("\n")

