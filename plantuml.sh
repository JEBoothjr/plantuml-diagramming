#!/bin/bash

echo $$;

docker rm plantuml

# https://plantuml.com/security
docker run --env PLANTUML_SECURITY_PROFILE=LEGACY --name plantuml -p 8080:8080 plantuml/plantuml-server:tomcat-v1.2023.10

# docker run -p 8080:8080 plantuml/plantuml-server:tomcat-v1.2022.6
