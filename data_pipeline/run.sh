#!/bin/bash

# Load environment variables
set -a  # automatically export all variables
source .env
set +a

# Run dbt command with all arguments passed to this script
dbt "$@"