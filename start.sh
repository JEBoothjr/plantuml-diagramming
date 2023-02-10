#!/bin/bash

# Will start both servers at the same time and kill both on exit (ctrl+c)
# It takes a few moments for both processes to be killed
# If you start it again too soon, the port may be in use
# Find the port using `lsof -i :8080` or `lsof -i :8000` and `kill [PORT]`

(trap 'kill 0' SIGINT; sh ./libs.sh & sh ./plantuml.sh)
