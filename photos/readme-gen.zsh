#!/usr/bin/zsh

DIR=$(cd $(dirname $0); pwd)

README=$DIR/README.md
cp $DIR/README_BASE.md $README

for name in $(ls $DIR | grep -E "(jpg|png)")
do
  echo "![sena photo](https://raw.githubusercontent.com/zakuro9715/sena/master/photos/$name)" >> $README
done

echo "\n---\n" >> $README
cat $DIR/../cc.md >> $README
