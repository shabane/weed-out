while true
do	
	mkdir /tmp/dw
	cd /tmp/dw && wget --wait 0.5 --random-wait -mp $URL
	rm /tmp/dw -rf
	let COUNTER=COUNTER+1
	echo 'Done! Let Start Over'
done
