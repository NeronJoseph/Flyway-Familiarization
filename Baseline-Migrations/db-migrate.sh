#!/bin/bash

# Get the info about the DB before migration
docker run --rm -v "$(pwd)"/conf:/flyway/conf -v "$(pwd)"/sql:/flyway/sql flyway/flyway:8.5.0 info

# Run the migration script
docker run --rm -v "$(pwd)"/conf:/flyway/conf -v "$(pwd)"/sql:/flyway/sql flyway/flyway:8.5.0 migrate

# Get the info about the DB after migration
docker run --rm -v "$(pwd)"/conf:/flyway/conf -v "$(pwd)"/sql:/flyway/sql flyway/flyway:8.5.0 info