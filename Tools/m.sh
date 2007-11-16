#!/bin/bash

# $1 is audio, control, or video
# $2 is the name of the module sans decorations

svn mv library/modules/$1/jmod.$2.mxt library/$1-modules/$2/jmod.$2.mxt
svn mv library/presets/jmod.$2.xml library/$1-modules/$2/jmod.$2.xml
svn mv library/algorithms/$1/jalg.$2.mxt library/$1-modules/$2/jalg.$2.mxt

svn mv documentation/module-help/jmod.$2.help library/$1-modules/$2/jmod.$2.help
svn mv documentation/html/modules/jmod.$2.html library/$1-modules/$2/jmod.$2.html
