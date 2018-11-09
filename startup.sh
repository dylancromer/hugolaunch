#!/usr/bin/env sh
set -e

#Set these yourself

SITE_REPOSITORY_NAME="<NAME>"
USERNAME="<USERNAME>"

#Uncomment and set if you want to add a theme automatically (Must also uncomment the git submodule add command)

#THEME_USERNAME="<THEMEUSERNAME>"
#THEME_NAME="<THEMENAME>"

#Do not change unless you use some other git service
SITE_REPOSITORY="https://github.com/$USERNAME/$SITE_REPOSITORY_NAME"
DEV_REPOSITORY="https://github.com/$USERNAME/$SITE_REPOSITORY_NAME-dev"

cd ..
mkdir hugo_sites && cd hugo_sites

hugo new site $SITE_REPOSITORY_NAME

cp hugolauch/deploy.sh $SITE_REPOSITORY_NAME

cd $SITE_REPOSITORY_NAME
git init && git add remote origin $DEV_REPOSITORY

git submodule add -b master git@github.com:$USERNAME/$USERNAME.github.io.git public

#Uncomment if you want to add a theme automatically

#git submodule add https://github.com/$THEME_USERNAME/$THEME_NAME themes/$THEME_NAME

cd ../hugolaunch
