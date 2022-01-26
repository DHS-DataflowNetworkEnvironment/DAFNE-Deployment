#!/bin/bash

echo "  *********************************************************************************"
echo "  *                                                                               *"
echo "  *                            Welcome to the DAFNE                               *"
echo "  *                                                                               *"
echo "  *********************************************************************************"

echo "  Shutting down DAFNE..."
docker-compose down
echo "  Application stopped"
echo "  You can check the application status by means of the following command:"
echo "  docker ps"