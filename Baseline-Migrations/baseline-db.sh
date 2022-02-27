#!/bin/bash

# Get the info about the DB before migration
docker run --rm -v "$(pwd)"/conf:/flyway/conf -v "$(pwd)"/sql:/flyway/sql flyway/flyway:8.5.0 -baselineVersion="0" -baselineDescription="Baseline_Migration" baseline
