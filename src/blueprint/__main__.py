#!/usr/bin/env python
# encoding: utf-8

"""This file permits to launch blueprint using
    python -m blueprint
"""
import sys
from .cli import cli

if __name__ == "__main__":
    # remove first item of argv since its the script name
    cli(sys.argv[1:])
