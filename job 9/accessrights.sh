MY_INPUT='/Users/raphaelmalet/Documents/git/shell.exe/job 9/Shell_Userlist.csv'
declare -a A_ID
declare -a A_PRENOM
declare -a A_NOM
declare -a A_MDP
declare -a A_ROLE
while IFS=, read -r COL1 COL2 COL3 COL4 COL5; do
    A_ID+=("$COL1")
    A_PRENOM+=("$COL2")
    A_NOM+=("$COL3")
    A_MDP+=("$COL4")
    A_ROLE+=("$COL5")
done <"$MY_INPUT"

for index in "${!A_PRENOM[@]}"; do

mkdir /Users/${!A_PRENOM[@]} && dscl . -creat /Users/${!A_PRENOM[@]} && dscl . -create /Users/${!A_PRENOM[@]} UserShell /bin/bash && dscl . -create /Users/${!A_PRENOM[@]} RealName "${!A_PRENOM[@]}-${!A_NOM[@]}" && dscl . -create 
/Users/${!A_PRENOM[@]} UniqueID "${A_ID[@]}" && dscl . -create /Users/${!A_PRENOM[@]} NFSHomeDirectory /Users/{!A_PRENOM[@]} && dscl . -passwd /Users/${!A_PRENOM[@]} ${A_MDP[@]}
done
