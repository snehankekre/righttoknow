
#!/bin/bash

cd /righttoknow/data/json/

i=0
suffix=.json
while ((i <= 5000)); do
	let i+=1
  wget --https-only --no-check-certificate "https://www.righttoknow.org.au/request/$i$suffix"
done

echo "$i FOI requests (JSON) downloaded to /righttoknow/data/json/"
