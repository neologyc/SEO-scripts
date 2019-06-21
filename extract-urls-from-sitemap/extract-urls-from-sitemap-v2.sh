#!/bin/bash
# SETUP

for i in {1..35}
do
	# curl stazeni vsech ID podle rozsahu parametru ve for - URL je potreba zmenit
   	curl https://mapy.cz/sitemap/sitemap-$i.xml 2> /dev/null |  
   	# prida praydne radky - nektere sitemapy jsou v jednom radku a tohle ten jeden radek rozpadne, at pak dobre funguje grep
   	sed -e $'s/<url/\\\n<url/g' |
   	# vygrepuju jen URL
   	grep -Po '(?<=<loc>).*(?=</loc>)' >> 
   	# posilam do nejake URL
   	mapydevurls;
done
