#!/bin/bash
for((i=0;i<=1000;i++));
do
	echo -e "Press any key to start."
	read -s -n1 inp
	if [ $inp = "q" ];
	then
		break
	fi
	for((j=0;j<=20;j++));
	do
		./test
		#./raspberrypi_capture
		if [ $? -eq -1 ];
		then # overtemp
			echo "Overtemp! Count down 10 second to cool, otherwise shutdown!"
			echo "10 seconds left!";
			./test
			#./raspberrypi_capture
			if [$? -eq 0];
			then
				continue
			fi
			echo "9 seconds left!";
			./test
			#./raspberrypi_capture
			if [$? -eq 0];
			then
				continue
			fi
			echo "8 seconds left!";
			./test
			#./raspberrypi_capture
			if [$? -eq 0];
			then
				continue
			fi
			echo "7 seconds left!";
			./test
			#./raspberrypi_capture
			if [$? -eq 0];
			then
				continue
			fi
			echo "6 seconds left!";
			./test
			#./raspberrypi_capture
			if [$? -eq 0];
			then
				continue
			fi
			echo "5 seconds left!";
			./test
			#./raspberrypi_capture
			if [$? -eq 0];
			then
				continue
			fi
			echo "4 seconds left!";
			./test
			#./raspberrypi_capture
			if [$? -eq 0];
			then
				continue
			fi
			echo "3 seconds left!";
			./test
			#./raspberrypi_capture
			if [$? -eq 0];
			then
				continue
			fi
			echo "2 seconds left!";
			./test
			#./raspberrypi_capture
			if [ $? -eq 0 ];
			then
				continue
			fi
			echo "1 seconds left!";
			./test
			#./raspberrypi_capture
			if [$? -eq 0];
			then
				continue
			fi
			echo "Overtemp! Shutdown now"
			break
		fi
	done
	echo -e "Finished."
done
echo -e "Stop capturing."
