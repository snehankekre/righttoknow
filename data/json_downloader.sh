#!/bin/bash

cd /Users/Minerva/Projects/righttoknow/data/json/

i=0
suffix=.json
while ((i <= 5000)); do
	let i+=1
	echo "Downloading page $i$suffix"
  curl -OJL "https://www.righttoknow.org.au/request/$i$suffix"
  echo "Downloaded page $i$suffix"
done

echo "$i pages have been downloaded into /Users/Minerva/Projects/righttoknow/data/json/"
