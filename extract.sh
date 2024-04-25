#!/bin/bash
TAR_DIR="./data"
for file in "$TAR_DIR"/*.tar
do
 tar -xvf "$file"
done
