#!/bin/bash

echo "  *********************************************************************************"
echo "  *                                                                               *"
echo "  *                            Welcome to the DAFNE                               *"
echo "  *                                                                               *"
echo "  *********************************************************************************"

echo "  Starting DAFNE..."
docker-compose up -d
echo "  Application started"

echo "  You can check the application status by means of the following command:"
echo "  docker ps"

echo "  You can check the application logs by means of the following commands:"
echo "  docker logs be -f"
echo "  docker logs fe -f"
echo "  docker logs db -f (only in case of dockerized DB)"
