#!/usr/bin/env sh
set -e

#Set these yourself

SITE_REPOSITORY_NAME="hugotest"
USERNAME="dylancromer"

#Uncomment and set if you want to add a theme automatically (Must also uncomment the git submodule add command)

#THEME_USERNAME="<THEMEUSERNAME>"
#THEME_NAME="<THEMENAME>"

#Do not change unless you use some other git service
SITE_REPOSITORY="https://github.com/$USERNAME/$SITE_REPOSITORY_NAME"
DEV_REPOSITORY="https://github.com/$USERNAME/$SITE_REPOSITORY_NAME-dev"

cd ..

if [ ! -d "hugo_sites" ]; then
	mkdir hugo_sites
fi

cd hugo_sites

hugo new site $SITE_REPOSITORY_NAME

cp ../hugolaunch/deploy.sh $SITE_REPOSITORY_NAME

cd $SITE_REPOSITORY_NAME
git init && git remote add origin $DEV_REPOSITORY

git submodule add -b master github.com/$USERNAME/$SITE_REPOSITORY_NAME public

#Uncomment if you want to add a theme automatically

#git submodule add https://github.com/$THEME_USERNAME/$THEME_NAME themes/$THEME_NAME
