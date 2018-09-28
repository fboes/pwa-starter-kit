#!/bin/bash
cd `dirname $0`

TGT_DIRECTORY=tmp

read -p "Application name            : " APP_NAME
read -p "Short name (max. 12 chars)  : " SHORT_NAME
read -p "Description                 : " DESCRIPTION
read -p "Theme color (e.g. '#94c6ff'): " THEME_COLOR
read -p "Base URL path (e.g. '/')    : " BASE_URL
read -p "Path to icons (e.g. 'img/') : " ICON_DIR

SHORT_NAME=${SHORT_NAME:-$APP_NAME}
THEME_COLOR=${THEME_COLOR:-#94c6ff}
BASE_URL=${BASE_URL:-./}

[ -e $TGT_DIRECTORY ] && rm -rf $TGT_DIRECTORY
cp -r htdocs $TGT_DIRECTORY
cd $TGT_DIRECTORY

sed -i'' -e "s%PWA Starter Kit%$APP_NAME%g;s%PWASK%$SHORT_NAME%g;s%Kick-starting your PWA%$DESCRIPTION%g;s%#94c6ff%$THEME_COLOR%g;s%\./favicon%${BASE_URL}${ICON_DIR}favicon%g;s%\./%${BASE_URL}%g" *.html *.json *.js

if [[ "$ICON_DIR" ]]; then
  mkdir -p $ICON_DIR && mv *.png $ICON_DIR
fi

echo ""
echo "> Done generating files in /$TGT_DIRECTORY"
