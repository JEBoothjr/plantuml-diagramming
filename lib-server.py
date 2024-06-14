import os
import sys
import http.server
import socketserver

script_path = os.path.realpath(__file__)
parent_directory = os.path.dirname(script_path)

os.chdir(parent_directory + "/libraries")

PORT = 6250
if len(sys.argv) > 1:
    PORT = int(sys.argv[1])

handler = http.server.SimpleHTTPRequestHandler

try:
    with socketserver.TCPServer(("", PORT), handler) as httpd:
        print("Server started at localhost:" + str(PORT))
        httpd.serve_forever()
except KeyboardInterrupt:
    print(" Killing Server...")
    