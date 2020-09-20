#!/usr/bin/env python
# encoding: utf-8

"""cli module contains the CLI definition"""

import click


@click.command()
@click.argument("NAME", default="noname")
def cli(name: str) -> None:
    """The main blueprint command"""
    print(f"hello {name}")
