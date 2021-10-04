#!/usr/bin/env bash

set -eu
set -o pipefail

for file in $( find -H Pi -type f -name '*.agda' | sort ); do
    i=$( echo ${file} | sed 's/Pi\/\(.*\)\.agda/Pi\/\1/' | sed 's/\//\./g' )
    echo "import ${i}" >> index.agda
done
