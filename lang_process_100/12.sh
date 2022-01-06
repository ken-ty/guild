#! /bin/bash

# 12. 1列目をcol1.txtに，2列目をcol2.txtに保存
# 各行の1列目だけを抜き出したものをcol1.txtに，
# 2列目だけを抜き出したものをcol2.txtとしてファイルに保存せよ．
# 確認にはcutコマンドを用いよ．

FILENAME="popular-names.txt"

IFS='	'
touch "col1.txt"
touch "col2.txt"
while read line
do
    # echo $line
    cols=($line)
    echo ${cols[0]} >> "col1.txt"
    echo ${cols[1]} >> "col2.txt"
done < $FILENAME

# 確認用
# cut -f 1 ${FILENAME}
# cut -f 2 ${FILENAME}