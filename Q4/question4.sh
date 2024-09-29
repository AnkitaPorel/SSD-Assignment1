#!/bin/bash

mkdir -p temp_activity && touch temp_activity/temp{1..50}.sh && find temp_activity -maxdepth 1 \( -name 'temp[1-9].sh' -o -name 'temp1[0-9].sh' -o -name 'temp2[0-5].sh' \) -exec sh -c 'mv "$0" "${0%.sh}.txt"' {} \;
