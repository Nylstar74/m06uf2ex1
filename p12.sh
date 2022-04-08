#!/bin/bash
# Casanova Oscar
# M06uf2ex1
# p12.sh


if (( $EUID != 0 )) # $EUID = 0 if you are running the script with root privileges
then
  echo "This script must be run as a root"
  exit 1 
fi

clear

function comprova {

if [[ -d /mnt/cpseg ]]
	then
		mkdir /mnt/cpseg
	fi
return 0
}



function copia {

		cp /etc/crontab /mnt/cpseg
		cp /etc/hosts /mnt/cpseg
		tar -cvzf backup202204081825.tar.gz  /mnt/cpseg/crontab /mnt/cpseg/hosts

	echo "Copia realizada y comprimida correctamente"
return 0
}


exit 0
