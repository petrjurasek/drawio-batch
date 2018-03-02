#!/bin/sh
set -e

exec drawio-batch -j /usr/bin/phantomjs "$@"