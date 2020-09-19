#!/usr/bin/env python
# encoding: utf-8

import click


@click.command()
@click.argument("NAME", default="noname")
def cli(name):
    print(f"hello {name}")
    

