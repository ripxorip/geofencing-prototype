#!/bin/bash

env_update /app/provision/_config.yml /app/provision/config.yml

echo "Waiting for DB..."

python3.9 /app/provision/provision_db.py

echo "Waiting for Broker..."

python3.9 /app/provision/provision_broker.py
