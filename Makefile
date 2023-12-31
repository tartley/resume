help: ## Show this help.
	@grep -E '^[a-zA-Z_\.%-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-10s\033[0m %s\n", $$1, $$2}'
.PHONY: help

setup: ## Install required apt packages
	mkdir -p .build
	reqs=$$(cat requirements.apt) && sudo apt install -y --no-install-recommends $$reqs
.PHONY: setup

%.html: %.md style.css ## Generate given .html from corresponding .md file.
	pandoc --from markdown --to html --css style.css --self-contained --metadata title:"" --output $@ $<

%.pdf: %.md style.tex ## Generate given .pdf from corresponding .md file.
	pandoc --from markdown --to context --template style.tex --standalone $< -o .build/$*.tex
	(\
	cd .build; \
	mtxrun --script context $*.tex >/dev/null; \
	mv $@ ..; \
	)

MD_FILES = $(wildcard *Jonathan-Hartley*.md)
all: $(MD_FILES:%.md=%.html) $(MD_FILES:%.md=%.pdf) ## Convert all resume .md files to .html & .pdf

deploy: all
	cp Jonathan*.pdf ~/tartley.com/files/
	cp Jonathan*.html ~/tartley.com/files/

