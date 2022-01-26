#!/bin/bash

echo "  *********************************************************************************"
echo "  *                                                                               *"
echo "  *                            Welcome to the DAFNE                               *"
echo "  *                                                                               *"
echo "  *********************************************************************************"

export version=$1

if [ -z "$1" ]; then
    echo "[WARNING] No verions supplied: setting default value to SNAPSHOT"
    version="SNAPSHOT"
fi


echo "Remove symbolic link..."
echo "rm /data/dafne"
rm /data/dafne

echo "Create directory for release $version..."

echo "mkdir -p /data/dafne_${version} "
mkdir -p /data/dafne_${version}

echo "Create create new symbolic link..."

echo "ln -s  /data/dafne_${version} /data/dafne"
ln -s  /data/dafne_${version} /data/dafne

echo "Copy the configuration files in the proper folder..."

echo "cp -R data/dafne/* /data/dafne_${version}/"
cp -R data/dafne/* /data/dafne_${version}/


echo "DAFNE environment ready!"
