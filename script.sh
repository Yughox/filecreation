Please input the file name or file directoy path."
read file
  if [ -f $file ]
	then 
	echo "Printing details of $file"
	sleep 2
	cat -n $file
  elif [ -f != 0 ]
        then
	echo "File does not exist, proceeding to next step..."
	sleep 2
	PS3="Do you want to create the missing file?"
	select opt in yes no
#	PS3="Do you want to create the missing file?"
	do 
		case $opt in
			yes) 
			   touch $file 
			   echo "Creating file..."
			   sleep 2
			   echo "file created"
			   break ;;
			no) 
			  echo "Exiting program..."
			  sleep 2
			  break ;;
			*) 
			  echo "Please choose from options above" ;;
		esac 
	done
  fi
