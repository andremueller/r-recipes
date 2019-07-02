#!/usr/bin/env bash
set -o errexit
Rscript -e "testthat::test_dir('tests')"
