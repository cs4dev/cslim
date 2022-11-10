#!/bin/bash

if [ -d "dist/packages" ]
then
  cd dist/packages || exit
  for d in */;
    do
      if [[ $d != "shared/" ]]
      then
        echo "Publishing $d to GitHub Packages"
        npm publish "$d"
      fi
    done
  else
    echo "no packages to publish, skipped"
  fi
