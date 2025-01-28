help: ## Show this help.
	@grep -E '^[a-zA-Z_\.%-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-10s\033[0m %s\n", $$1, $$2}'
.PHONY: help

setup: ## Install required apt packages
	mkdir -p .build
	reqs=$$(cat requirements.apt) && sudo apt install -y --no-install-recommends $$reqs
.PHONY: setup

%.html: %.md style.css # Generate given .html from corresponding .md file.
	pandoc --from markdown --to html --css style.css --self-contained --output $@ $<

%.pdf: %.md style.tex # Generate given .pdf from corresponding .md file.
	pandoc --from markdown --to context --template style.tex --standalone $< -o .build/$*.tex
	(\
	cd .build; \
	mtxrun --script context $*.tex >/dev/null; \
	mv $@ ..; \
	)

html: Jonathan-Hartley-resume.html ## Resume as HTML

pdf: Jonathan-Hartley-resume.pdf ## Resume as PDF

all: html pdf

deploy: all ## Copy .pdf and .html outputs to ~/tartley.com/files
	cp Jonathan*.pdf ~/tartley.com/files/
	cp Jonathan*.html ~/tartley.com/files/

