#!/bin/bash -e
# Begin service ENV variables

if [ -z "$SHIPPABLE_START_POSTGRES" ]; then
  export SHIPPABLE_START_POSTGRES=true;
fi

if [ -z "$SHIPPABLE_POSTGRES_PORT" ]; then
  export SHIPPABLE_POSTGRES_PORT=5432;
fi

if [ -z "$SHIPPABLE_POSTGRES_VERSION" ]; then
  export SHIPPABLE_POSTGRES_VERSION="10";
fi

if [ -z "$SHIPPABLE_POSTGRES_BINARY" ]; then
  export SHIPPABLE_POSTGRES_BINARY="/usr/pgsql-10/bin/postgres";
fi

if [ -z "$SHIPPABLE_POSTGRES_CMD" ]; then
  export SHIPPABLE_POSTGRES_CMD="sudo -u postgres $SHIPPABLE_POSTGRES_BINARY -c config_file=/var/lib/pgsql/$SHIPPABLE_POSTGRES_VERSION/data/pg_hba.conf";
fi

# End service ENV variables
