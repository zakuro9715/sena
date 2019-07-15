#!/usr/bin/zsh

cp README_BASE.md README.md
cp photos/README_BASE.md photos/README.md

i=0
for name in $(ls photos | grep -E "(jpg|png)")
do
  if expr "$i" '%' '3' '==' '0' > /dev/null
  then
    if expr "$i" '>' '0' > /dev/null
    then
      echo "</p>" >> README.md
      echo "</p>" >> photos/README.md
    fi

    echo "<p align='center'>" >> README.md
    echo "<p align='center'>" >> photos/README.md
  fi

  echo "    <img width='280' src='https://raw.githubusercontent.com/zakuro9715/sena/master/photos/$name'>" >> README.md
  echo "    <img width='280' src='https://raw.githubusercontent.com/zakuro9715/sena/master/photos/$name'>" >> photos/README.md
  i=$((i + 1))
done

if expr "$i" '%' '3' '!=' '0' > /dev/null
then
  echo "</p>" >> README.md
  echo "</p>" >> photos/README.md
fi

echo "\n---\n" >> README.md
echo "\n---\n" >> photos/README.md
cat cc.md >> README.md
cat cc.md >> photos/README.md
