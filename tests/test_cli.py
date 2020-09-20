#!/usr/bin/env python
# encoding: utf-8

from click.testing import CliRunner

from blueprint.cli import cli


def test_me():
    runner = CliRunner()
    result = runner.invoke(cli, ["TOTO"])
    assert result.exit_code == 0
