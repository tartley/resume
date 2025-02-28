help: ## Show this help.
	@grep -E '^[a-zA-Z_\.%-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-10s\033[0m %s\n", $$1, $$2}'
.PHONY: help

setup: ## Install required apt packages
	printf "\n  \033[1;31mPress enter multiple times if this hangs...\033[0m\n\n"
	sudo apt install -y --no-install-recommends $$(cat requirements.apt)
.PHONY: setup

%.html: %.md style.css Makefile # Generate given .html from corresponding .md file.
	pandoc --from markdown --to html -V title:"" --css style.css --self-contained --output $@ $<

%.pdf: %.md style.css Makefile # Generate given .pdf from corresponding .md file.
	pandoc -f markdown -t html5 \
		--pdf-engine-opt=--enable-local-file-access \
		--pdf-engine-opt=-B \
		--pdf-engine-opt=15mm \
		--pdf-engine-opt=-T \
		--pdf-engine-opt=10mm \
		--pdf-engine-opt=-L \
		--pdf-engine-opt=2mm \
		--pdf-engine-opt=-R \
		--pdf-engine-opt=2mm \
		--pdf-engine-opt=--minimum-font-size \
		--pdf-engine-opt=18 \
		--css style.css -V title:"" $< -o $@

html: Jonathan-Hartley-resume*.html Makefile ## Resume as HTML
.PHONY: html

pdf: Jonathan-Hartley-resume.pdf Makefile ## Resume as PDF
.PHONY: pdf

all: html pdf ## HTML & PDF
.PHONY: all

deploy: all ## Copy .pdf and .html outputs to ~/tartley.com/files
	cp Jonathan*.pdf ~/tartley.com/files/
	cp Jonathan*.html ~/tartley.com/files/
.PHONY: deploy

