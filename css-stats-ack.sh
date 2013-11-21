#!/bin/bash

## credit: https://gist.github.com/pjkix/1265822
## v1.0.6
## this script will gernerate css stats
 
### example output
 
# CSS STATS
# ----------
# Floats:  132
# Headings:  107
# Margins:  432
# Paddings:  463
# Font-Sizes:  170
# Importants:  56
 
 
echo 'CSS STATS'
echo '========='
echo
 
echo 'General: '
echo '----------'
 
## number of files
echo -n "Number of CSS files: "
ack --css -f | wc -l
## number of lines
# ack --nogroup --css --passthru * | wc -l | xargs echo "Number of Lines of Code (LoC)"
## longest file
echo 'File Length (LoC):'
find . -iname "*.css" | xargs wc -l | sort -r
echo
echo 'File Size (KBytes)'
# find . -iname "*.css" | xargs ls -l | awk '{print $5 "\t" $9}' | sort -nr ## Bytes
# find . -iname "*.css" | xargs ls -l | awk '{printf("%.1fK\t", $5 / 1024); print  "\t" $9}' | sort -nr ## KB
find . -iname "*.css" -print0 | xargs -0 du -hsc | sort -nr ## block size
# find . -iname "*.css" -print0 | du -hsc  ## block size
# stat -f "%z  Bytes" stats.sh ## actual file size in bytes
 
echo
 
echo 'Props: '
echo '----------'
## append search results
# echo -n "test:"
echo -n "Floats: "
ack --nogroup --css float | wc -l
echo -n "Headings: "
ack --nogroup --css h[1-6] | wc -l
 
echo -n "Margins: "
ack --nogroup --css margin | wc -l
echo -n "Margins 0: "
ack --nogroup --css --match="margin-?(top|right|bottom|left)?\s*:\s*0" | wc -l
 
echo -n "Paddings: "
ack --nogroup --css padding | wc -l
echo -n "Padding 0: "
ack --nogroup --css --match="padding-?(top|right|bottom|left)?\s*:\s*0" | wc -l
 
echo -n "Font-Sizes: "
ack --nogroup --css font-size | wc -l
echo -n "Importants: "
ack --nogroup --css important | wc -l
echo
 
## colors
echo 'Colors:'
echo '----------'
echo -n "Hex: "
ack --nogroup --css --match="#[0-9a-fA-F]{3,6}" -o -h | wc -l
echo -n "RGB(a): "
ack --nogroup --css --match="rgba?\w*\(.*\)" -o -h | wc -l
echo
 
### unique
echo 'Unique Colors:'
echo '----------'
echo -n 'Hex: '
ack --nogroup --css --match="#[0-9a-fA-F]{3,6}" -o -h | sort | uniq -i -c | wc -l
echo
ack --nogroup --css --match="#[0-9a-fA-F]{3,6}" -o -h | sort | uniq -i -c | sort -r
echo
echo -n 'RGB(a): '
ack --nogroup --css --match="rgba?\w*\(.*\)" -o -h | sort | uniq -i -c | wc -l
echo
ack --nogroup --css --match="rgba?\w*\(.*\)" -o -h | sort | uniq -i -c | sort -r
echo
 
## Images
echo "Images:"
echo '----------'
echo -n "URLs:"
ack --nogroup --css --match="url\w?\(.*\)" -o -h | wc -l
### unique urls
echo -n "Unique URLs:"
ack --nogroup --css --match="url\w?\(.*\)" -o -h | sort | uniq -i -c | wc -l
echo
ack --nogroup --css --match="url\w?\(.*\)" -o -h | sort | uniq -i -c | sort -r
