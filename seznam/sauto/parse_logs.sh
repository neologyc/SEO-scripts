# log starého sauto převede na URL
# cil je unique cil URL
cat g-all | sed 's/^.*\]\s//' | sed 's/\sHTTP.*$//' | sed 's/http\s/http:\/\//' | sed 's/https\s/https:\/\//' | sed 's/\s\"GET\s//' | uniq > g-all-url-final
