#! /bin/bash

# 13. col1.txtとcol2.txtをマージPermalink

# 12で作ったcol1.txtとcol2.txtを結合し，
# 元のファイルの1列目と2列目をタブ区切りで
# 並べたテキストファイルを作成せよ．
# 確認にはpasteコマンドを用いよ．

MODE="回答"
# MODE="確認"
# MODE="結する果ファイル削除"

if [ $MODE = "回答" ]; then
    # col1.txt, col2.txtを作成
    ./12.sh
    # 2ファイルを結合する
    FILENAME="popular-names.txt"
    SEPARATOR=" "
    OUTPUT=${FILENAME}.out

    rm -rf $OUTPUT
    touch $OUTPUT

    exec 8< col1.txt
    exec 9< col2.txt
    while read -u 8 line
    do
        col1=$line
        read -u 9 line
        col2=$line
        line=${col1}${SEPARATOR}${col2}
        echo $line >> $OUTPUT
    done
fi

# 確認用
if [ $MODE = "確認" ]; then
    ./12.sh
    touch col1_2_merge.txt
    paste col1.txt col2.txt > col1_2_merge.txt
fi

# 結果ファイル削除
if [ $MODE = "結果ファイル削除" ]; then
    rm -rf col1.txt col2.txt popular-names.txt.out
fi