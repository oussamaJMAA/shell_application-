


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
echo -e "\n"
echo -e "Les Auteurs : \n Jmâa Oussama \n Khelifi Roukaia"
}

function AfficheContenuFichier {
if [ ! -f "$OPTARG" ]; then
    echo "$OPTARG Ce fichier Nexiste Pas."
   
else
echo "$OPTARG Ce fichier existe."
lscpu >> $OPTARG
  cat $OPTARG
 
fi
}

function MotCle {
echo "Entrez le fichier "
read n  
echo "le fichier choisi est $n"
echo "les lignes qui contiennet le mot $OPTARG"
grep -i  $OPTARG $n 

}

function AfficheHelp {
cat /etc/Description

}
function InfoPlusPertinant {

lshw >> $OPTARG
truncate --size 200 $OPTARG
}

function MenuGraph {

yad --title "Menu Graphique" --width=200 --height=200 --text="Vous Devez Choisir !" --text-align=center --button=gtk-info:1 --button=Description:2 --button=gtk-preferences:3
op=$?
case $op in
1) yad --text="Les Auteurs sont : Khelifi Roukaia Et Jmaa Oussama" --button=Okay:0
;;
2) cat /etc/Description
;;
3) yad --about
;;
*)echo "Menu Graphique Fermé.."
;;
esac

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
g)MenuGraph
;;
m)Menu
;;
v)AuteurVersion
;;
o) AfficheContenuFichier
;;
f)MotCle
;;
s)InfoPlusPertinant
;;
*) echo "Erreur ! "
esac

done
#to verify if there is no arguement 
if [ $# -eq 0 ]
then echo "Vous Devez Entrer Un argument En tant que execution !"
fi
exit 0
