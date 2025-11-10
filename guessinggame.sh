
count_files() {
  echo $(ls -1 | wc -l)
}

echo "Bienvenue au jeu de devinette <3!"
echo "Devinez combien de fichiers se trouvent dans ce répertoire okey ;) ."


correct_number=$(count_files)m

guess=-1


while [[ $guess -ne $correct_number ]]; do
  read -p "Entrez votre devinette : " guess

  
  if ! [[ $guess =~ ^[0-9]+$ ]]; then
    echo "Veuillez entrer un nombre valide."
    continue
  fi


  if [[ $guess -lt $correct_number ]]; then
    echo "Trop bas, essayez une autre fois ."
  elif [[ $guess -gt $correct_number ]]; then
    echo "Trop haut, essayez une autre fois ."
  else
    echo "Félicitations ! Vous avez deviné le nombre correct de fichiers : $correct_number"
  fi
done
