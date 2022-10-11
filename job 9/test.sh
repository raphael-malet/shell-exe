for ligne in $(cat Shell_Userlist.csv); do
id=$(echo ${ligne} | cut -d "," -f 1)
prenom=$(echo ${ligne} | cut -d "," -f 2)
nom=$(echo ${ligne} | cut -d "," -f 3)
mdp=$(echo ${ligne} | cut -d "," -f 4)
role=$(echo ${ligne} | cut -d "," -f 5)
dscl . -create /Users/$prenom-$nom
done
