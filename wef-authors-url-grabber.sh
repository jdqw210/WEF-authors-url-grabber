#!/bin/sh
echo "[:] WEF author url grabber script"
echo "[:] output is ~/WEF-URLs-authors.txt"
#--define variable $inc as a sequence of integers between 1 and 500, and start do loop
for inc in $(seq 1 503);
do
	#--tell user which page we are on:
	echo "[:] Grabbing URLs from wef authors page $inc of 503..."
	#--tell user what command we are using for information purposes:
	echo "curl https://www.weforum.org/agenda/authors?page=$inc | grep "/agenda/authors" >> ~/WEF-URLs-authors.txt"
	#--curl the current page and send it to the .txt file archive:
	curl https://www.weforum.org/agenda/authors?page=$inc | grep "/agenda/authors" >> ~/WEF-URLs-authors.txt
	# cause the script to wait for one second before continuing:
	sleep 1
						
done
#--finished
echo "[:] script complete!"