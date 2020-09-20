#!/usr/bin/env python
# encoding: utf-8

from setuptools import setup

setup(
    name="blueprint",
    version="1.0.0",
    url="https://github.com/zesk06/python-blueprint",
    author="zesk06",
    author_email="zesk06@gmail.com",
    description="A python blueprint",
    packages=["blueprint"],
    package_dir={"": "src"},
    # dependencies are to be added to ./requirements.txt
    requires=["click"],
    extras_require={
        "dev": [
            "bandit",
            "black",
            "flake8",
            "ipdb",
            "ipython",
            "neovim",
            "pylint",
            "pytest-cov",
        ]
    },
    entry_points={"console_scripts": ["blueprint=blueprint.cli:cli"]},
)
