#!/usr/bin/env bash

# docker push deinchristian/rpi-selenium-node-chrome
# Example Commandline:    ./generate.sh StandaloneChrome rpi-selenium-node-chrome Chrome 3.14.0 deinchristian DeinChristian

FOLDER=../$1  # StandaloneChrome
BASE=$2  # rpi-selenium-node-chrome
BROWSER=$3  # Chrome
VERSION=$4  # 3.14.0
NAMESPACE=$5  # deinchristian
AUTHORS=$6  # DeinChristian

echo "# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!" > $FOLDER/Dockerfile
echo "# NOTE: DO *NOT* EDIT THIS FILE.  IT IS GENERATED." >> $FOLDER/Dockerfile
echo "# PLEASE UPDATE Dockerfile.txt INSTEAD OF THIS FILE" >> $FOLDER/Dockerfile
echo "# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!" >> $FOLDER/Dockerfile
echo FROM $NAMESPACE/$BASE:$VERSION >> $FOLDER/Dockerfile
echo LABEL authors="$AUTHORS" >> $FOLDER/Dockerfile
echo "" >> $FOLDER/Dockerfile
cat ./Dockerfile.txt >> $FOLDER/Dockerfile

cp ./entry_point.sh $FOLDER

BROWSER_LC=$(echo $BROWSER |  tr '[:upper:]' '[:lower:]')

cat ./README.template.md \
  | sed "s/##BROWSER##/$BROWSER/" \
  | sed "s/##BROWSER_LC##/$BROWSER_LC/" \
  | sed "s/##BASE##/$BASE/" \
  | sed "s/##FOLDER##/$1/" > $FOLDER/README.md


cat ./README-short.template.txt \
  | sed "s/##BROWSER##/$BROWSER/" > $FOLDER/README-short.txt
