#!/bin/bash

cp -R html $HOME/html

#configuration
cd $HOME

git config --global user.email "med.amine.sabri@gmail.com"
git config --global user.name "aminesabri"

#clone branch gh-pages
#git clone --quiet --branch=gh-pages https://${GH_TOKEN}@github.com/${GH_REF}  gh-pages > /dev/null
#git clone --quiet https://${GH_TOKEN}@github.com/${GH_REF}  master > /dev/null
git clone --quiet https://${GH_TOKEN}@github.com/aminesabri/aminesabri.github.io.git  doc > /dev/null


cd master
ls

cp $HOME/html/faq.html ./index.html



 #add, commit and push files
 git add -f .
 git commit -m "Travis build $TRAVIS_BUILD_NUMBER pushed to gh-pages "
 #git push -f -q https://${GH_TOKEN}@github.com/${GH_REF} origin gh-pages > /dev/null
 #git push -fq origin gh-pages > /dev/null

git push -fq origin master > /dev/null

 #git push -f -q https://${GH_TOKEN}@github.com/${GH_REF}  master > /dev/null



 echo -e "Deploy completed\n"


 #fi
