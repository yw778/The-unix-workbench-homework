all: guessinggame.sh
	touch README.md
	echo "Peer-graded Assignment: Bash, Make, Git, and GitHub" >> README.md
	date >> README.md
	cat guessinggame.sh | wc -l >> README.md

clean: README.md
	rm README.md