# Variables
DATE := $(shell date +"%Y-%m-%d %H:%M:%S")
LINE_COUNT := $(shell wc -l < guessinggame.sh)

# Cible par défaut pour générer le README.md
all: README.md

# Cible pour créer README.md
README.md:
	@echo "# Guessing Game" > README.md
	@echo "" >> README.md
	@echo "## Date and Time" >> README.md
	@echo "Le make a été exécuté à : $(DATE)" >> README.md
	@echo "" >> README.md
	@echo "## Nombre de lignes de code" >> README.md
	@echo "Le fichier guessinggame.sh contient $(LINE_COUNT) lignes de code." >> README.md
	@echo "" >> README.md
	@echo "## Description" >> README.md
	@echo "Ce projet est un jeu dans lequel l'utilisateur doit deviner le nombre de fichiers dans le répertoire actuel." >> README.md
	@echo "Une fois la bonne réponse donnée, le jeu félicite l'utilisateur et se termine." >> README.md
