
all: Jonathan-Hartley.html Jonathan-Hartley.pdf

%.html : %*.rst ; \
	rst2html.py --stylesheet=cv.css --embed-stylesheet --initial-header-level=2 $< $@

%.pdf: %*.rst ; \
	rst2pdf $< -o $@ >/dev/null

