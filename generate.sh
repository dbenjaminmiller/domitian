#!/bin/bash
for file in $(ls *sfd)
do
  name=${file%%.sfd}
  fontforge -lang=ff -c 'Open($1); Generate($2)' $file $name.otf
done

