#!/bin/bash
# Děkuji Čmeláku

for url in `curl https://www.firmy.cz/sitemap.xml 2> /dev/null | grep -o "https://www.firmy.cz/sitemap[0-9]*.xml.gz"`; do curl "${url}" 2> /dev/null | zgrep -Po '(?<=<loc>).*(?=</loc>)' >> urls ; done
