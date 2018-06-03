#!/bin/bash

cd /righttoknow/data/json/

i=0
suffix=.json
while ((i <= 5000)); do
	let i+=1
	echo "Downloading file $i$suffix"
  curl -OJL "https://www.righttoknow.org.au/request/$i$suffix"
  echo "Downloaded page $i$suffix"
  echo ""
done

echo "$i FOI requests downloaded in JSON to /righttoknow/data/json/"
