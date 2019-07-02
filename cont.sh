manoj=$1

echo "creating containers $manoj for multiple"
sleep 2;
 
for i in `seq $manoj`
do

	echo "creating www.branch$i containers"
	sudo docker run -it --name www.branch$i mano8888/newdoc /bin/bash
	sleep 1;
	echo "www.branch$i containers has been created"
done
