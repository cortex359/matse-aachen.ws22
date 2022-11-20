# TEXFILES := $(shell find . -type d -regextype gnu-awk -regex '\./[a-z]{2,5}[0-9]_(h|p)[0-9]{2}')
TEXFILES := la1_h07 la1_h06 ana1_h07 ana1_h06

default: all

all: $(TEXFILES)
.PHONY: force

$(TEXFILES): force
	cd $@ && latexmk -pdf -interaction=errorstopmode -file-line-error main.tex

vorlage:
	cd vorlage/v1.2.0 ; latexmk -pdf -interaction=errorstopmode -file-line-error main.tex