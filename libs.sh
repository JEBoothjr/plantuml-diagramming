#!/bin/bash

echo $$;

SCRIPT_DIR="$( cd -- "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

python3 $SCRIPT_DIR/lib-server.py 6250
