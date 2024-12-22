#!/bin/bash

PACKAGES=('v9' 'v10' 'v11' 'v12' 'v13' 'v14' 'v15' 'v16' 'v17' 'v18' 'v19')

for PACKAGE in "${PACKAGES[@]}"
do
  cd packages/$PACKAGE/dist

  npm publish

  cd ../../..
done
