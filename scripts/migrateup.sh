#!/bin/bash

#if [ -f .env ]; then
#    source .env
#fi

#cd sql/schema
#goose turso $DATABASE_URL up

set -e

# Export the variables so goose can see them
export GOOSE_DRIVER="turso"
export GOOSE_DBSTRING="$DATABASE_URL"

# Run the migration
goose -dir sql/schema up