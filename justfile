default: 
	@just --list

run: 
	overmind start

deploy: 
	fly deploy