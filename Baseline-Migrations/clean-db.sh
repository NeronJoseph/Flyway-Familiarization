#!/bin/bash

# Clean the database by dropping all tables
docker run --rm -v "$(pwd)"/conf:/flyway/conf flyway/flyway:8.5.0 clean