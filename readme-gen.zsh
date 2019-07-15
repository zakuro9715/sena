#!/usr/bin/zsh

cp README_BASE.md README.md
cp photos/README_BASE.md photos/README.md

for name in $(ls photos | grep -E "(jpg|png)")
do
  echo "![sena photo](https://raw.githubusercontent.com/zakuro9715/sena/master/photos/$name)" >> README.md
  echo "![sena photo](https://raw.githubusercontent.com/zakuro9715/sena/master/photos/$name)" >> photos/README.md
done

echo "\n---\n" >> README.md
echo "\n---\n" >> photos/README.md
cat cc.md >> README.md
cat cc.md >> photos/README.md
