import sys
import http.server
import socketserver


PORT = 8000
if len(sys.argv) > 1:
    PORT = int(sys.argv[1])

handler = http.server.SimpleHTTPRequestHandler

try:
    with socketserver.TCPServer(("", PORT), handler) as httpd:
        print("Server started at localhost:" + str(PORT))
        httpd.serve_forever()
except KeyboardInterrupt:
    print(" Killing Server...")