#!/usr/bin/env python
# encoding: utf-8

from setuptools import setup, find_packages

setup(
    name="blueprint",
    version="1.0.0",
    url="https://github.com/zesk06/python-blueprint",
    author="zesk06",
    author_email="zesk06@gmail.com",
    description="A python blueprint",
    packages=["blueprint"],
    package_dir={"": "src"},
    extras_require={"dev": ["ipython","ipdb" ,"pytest", "pytest-cov", "black"]},
    entry_points={"console_scripts": ["blueprint=blueprint.cli:cli"]},
)
