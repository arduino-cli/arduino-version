#!/bin/bash

shopt -s nullglob

for file in *.tar.xz, **/*.tar.xz
do
  echo 'Processing' ${file%.tar.xz}
  rm -rf ${file%.tar.xz}'.zip'
  echo '..Decrompressing' ${file%.tar.xz}'.tar.xz'
  tar -xlJf $file
  dir=`tar -tJf $file | head -1 | sed -e 's/\/.*//'`
  echo '..Compressing extracted' $dir 'folder into' ${file%.tar.xz}'.zip'
  zip -rq ${file%.tar.xz}.zip $dir/
  echo '..Deleting' $dir 'folder'
  rm -rf ${dir}
  echo 'Done!'
done

for file in *.tgz, **/*.tgz
do
  echo 'Processing' ${file%.tgz}
  rm -rf ${file%.tgz}'.zip'
  echo '..Decrompressing' ${file%.tgz}'.tgz'
  tar -xlzf $file
  dir=`tar -tzf $file | head -1 | sed -e 's/\/.*//'`
  echo '..Compressing extracted' $dir 'folder into' ${file%.tgz}'.zip'
  zip -rq ${file%.tgz}.zip $dir/
  echo '..Deleting' $dir 'folder'
  rm -rf ${dir}
  echo 'Done!'
done