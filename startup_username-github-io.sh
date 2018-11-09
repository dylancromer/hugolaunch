#!/usr/bin/env sh
set -e

#Set these yourself

USERNAME="<USERNAME>"

#Uncomment and set if you want to add a theme automatically (Must also uncomment the git submodule add command)

#THEME_USERNAME="<THEMEUSERNAME>"
#THEME_NAME="<THEMENAME>"

#Do not change unless you use some other git service
SITE_REPOSITORY_NAME="$USERNAME.github.io"
SITE_REPOSITORY="https://github.com/$USERNAME/$USERNAME.github.io"
DEV_REPOSITORY="https://github.com/$USERNAME/$USERNAME.github.io-dev"

cd ..

if [ ! -d "hugo_sites" ]; then
	mkdir hugo_sites
fi

cd hugo_sites

hugo new site $SITE_REPOSITORY_NAME

cp ../hugolaunch/deploy.sh $SITE_REPOSITORY_NAME

cd $SITE_REPOSITORY_NAME
git init && git remote add origin $DEV_REPOSITORY

git submodule add -b master github.com/$USERNAME/$USERNAME.github.io.git public

#Uncomment if you want to add a theme automatically

#git submodule add https://github.com/$THEME_USERNAME/$THEME_NAME themes/$THEME_NAME
