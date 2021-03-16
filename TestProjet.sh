#!/bin/bash

function Menu {
PS3='Please enter you (Cest Un Menu En Boucle): '
options=("Option 1" "Option 2" "Option 3" "Quit")
select opt in "${options[@]}"
do
case $opt in
"Option 1")
echo "You chose Choise 1"
;;
"Option 2")
echo "You Chose Choice 2"
;;
"Option 3")
echo "You chose Choice $REPLY whichis $opt"
;;
"Quit")
break
;;
*) echo "invalid option $REPLY"
;;
esac
done
}

function AuteurVersion {
	lsb_release -d 
	#cat /etc/lsb-release -d
	echo -e "\n"
	echo -e "Les Auteurs : \n Jmâa Oussama \n Khelifi Roukaia"
}

function AfficheContenuFichier {
	if [ ! -f "$OPTARG" ]; then
    echo "$OPTARG This file doesn't exist."
else
echo "$OPTARG This file exist."
  cat $OPTARG
fi
}

function AfficheHelp {
./Description.sh
}


while getopts "uwhgms:vo:f:" option
do
echo "Getopts a trouvé loption $option"
case $option in
w) lshw
;;
u)lscpu
;;
h)AfficheHelp
;;
g)yad
;;
m)Menu
;;
v)AuteurVersion
;;
o) AfficheContenuFichier
;;
*) echo "Erreur"
esac
done
exit 0
