#!/bin/sh

for dir in static sources; do
    find . -name '*.html' | xargs sed -i -e "s|\([\"/]\)_$dir|\1$dir|g"
    rm -rf $dir
    mv _$dir $dir
done
