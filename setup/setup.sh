#!/usr/bin/env bash

echo '-------------------------------------------------------------------------------------------'
echo 'Instaling basic software'
echo '-------------------------------------------------------------------------------------------'
sudo apt-get install puppet-common git -y

echo '-------------------------------------------------------------------------------------------'
echo 'Cloning alias repository.'
echo '-------------------------------------------------------------------------------------------'
cd
mkdir -p development
cd development
rm -rf alias
git clone --recursive git://github.com/juanibiapina/alias.git

echo '-------------------------------------------------------------------------------------------'
echo 'Running puppet'
echo '-------------------------------------------------------------------------------------------'
cd alias
cd setup
puppet apply setup.pp
