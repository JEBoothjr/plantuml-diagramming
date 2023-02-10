#!/bin/bash

echo $$;

docker run -p 8080:8080 plantuml/plantuml-server:tomcat-v1.2022.6
