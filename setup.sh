#!/bin/bash
cd `dirname $0`/htdocs

read -p "Application name            : " APP_NAME
read -p "Short name (max. 12 chars)  : " SHORT_NAME
read -p "Theme color (e.g. '#94c6ff'): " THEME_COLOR
read -p "Path to icons (e.g. 'img/') : " ICON_DIR

sed -i'' -e "s%#PWA Starter Kit%$APP_NAME%g;s%PWASK%$SHORT_NAME%g;s%#94c6ff%$THEME_COLOR%g;s%\./favicon%./${ICON_DIR}favicon%g" *.html *.json *.js

mkdir -p $ICON_DIR && mv *.png $ICON_DIR

