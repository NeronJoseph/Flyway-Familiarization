#!/bin/bash

# Get the details about the DB using info command
docker run --rm -v "$(pwd)"/conf:/flyway/conf -v "$(pwd)"/sql:/flyway/sql flyway/flyway:8.5.0 info