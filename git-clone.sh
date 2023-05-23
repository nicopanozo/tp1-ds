#!/bin/sh
echo "Cloning ${REPO} from Docker" #prints message
git clone --recursive $REPO /app/linked/clonedRepo #clones the repository
echo "Clonado OK"


