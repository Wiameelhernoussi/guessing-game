all: README.md

README.md: guessinggame.sh
	@echo "# Guessing Game Project" > README.md
	@echo "\nDate et heure d'exécution : $$(date)" >> README.md
	@echo "\nNombre de lignes dans guessinggame.sh : $$(wc -l < guessinggame.sh)" >> README.md
