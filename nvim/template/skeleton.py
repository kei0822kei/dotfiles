#!/usr/bin/env python
# -*- coding: utf-8 -*-

###############################################################################
# 
###############################################################################
### import modules
import os
import sys
import numpy as np
from matplotlib import pyplot as plt
import argparse


### Arg-parser
parser = argparse.ArgumentParser(
    description="")
parser.add_argument("--filename", default=None, help="file name")
parser.add_argument("--title", dest="title", default=None, help="Plot title")
parser.add_argument('--temperature', type=float, default=300.0,
                    help='Temperature to output data at')
args = parser.parse_args()
