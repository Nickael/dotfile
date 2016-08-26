#!/bin/bash

mv ~/.emacs ~/.emacs.bak && mv -f ~/.emacs.d ~/.emacs.d.bak

cp .emacs ~/.emacs && cp -fr .emacs.d/ ~/.emacs.d

emacs -nw
