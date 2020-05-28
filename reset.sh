#!/bin/bash

set -e

echo "# "
echo "# Stopping and removing containers..."
echo "# "
docker-compose kill
docker-compose rm -f

echo "# "
echo "# Removing database, wordpress, and logs..."
echo "# "

sudo rm -rf data/ logs/ wordpress/ mysql/
