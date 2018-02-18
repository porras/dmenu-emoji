jq  --raw-output '.[] | (.description + "," + .emoji)'|grep -v ',$'|awk 'gsub(",", sprintf("%*s", 50 - length($0), ""))'
