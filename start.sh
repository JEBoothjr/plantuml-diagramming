#!/bin/bash

# Will start both servers at the same time and kill both on exit (ctrl+c)
# It takes a few moments for both processes to be killed
# If you start it again too soon, the port may be in use
# Find the port using `lsof -i :8080` or `lsof -i :8000` and `kill [PORT]`

SCRIPT_DIR="$( cd -- "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

(trap 'kill 0' SIGINT; sh $SCRIPT_DIR/libs.sh & sh $SCRIPT_DIR/plantuml.sh)
