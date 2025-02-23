help: ## Show this help.
	@grep -E '^[a-zA-Z_\.%-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-10s\033[0m %s\n", $$1, $$2}'
.PHONY: help

setup: ## Install required apt packages
	printf "\n  \033[1;31mPress enter multiple times if this hangs...\033[0m\n\n"
	sudo apt install -y --no-install-recommends $$(cat requirements.apt)
.PHONY: setup

%.html: %.md style.css # Generate given .html from corresponding .md file.
	pandoc --from markdown --to html --css style.css --self-contained --output $@ $<

%.pdf: %.md style.tex # Generate given .pdf from corresponding .md file.
	mkdir -p .build
	pandoc --from markdown --to context --template style.tex --standalone $< -o .build/$*.tex
	# cd because mtx generates a few junk log files
	(\
	cd .build; \
	mtxrun --script context $*.tex >/dev/null; \
	mv $@ ..; \
	)

html: Jonathan-Hartley-resume*.html ## Resume as HTML
.PHONY: html

pdf: Jonathan-Hartley-resume.pdf ## Resume as PDF
.PHONY: pdf

all: html pdf
.PHONY: all

deploy: all ## Copy .pdf and .html outputs to ~/tartley.com/files
	cp Jonathan*.pdf ~/tartley.com/files/
	cp Jonathan*.html ~/tartley.com/files/
.PHONY: deploy

