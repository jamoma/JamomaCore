#!/bin/sh

headerdoc2html -C -o documentation ./includes
gatherheaderdoc documentation TTBlueTOC.html
