#! /bin/bash

# 14. 先頭からN行を出力Permalink
# 自然数Nをコマンドライン引数などの手段で受け取り，
# 入力のうち先頭のN行だけを表示せよ．
# 確認にはheadコマンドを用いよ．

MODE="回答"
# MODE="確認"

# 第一引数にNを取る想定
max=$1
if [ $MODE = "回答" ]; then
    FILENAME="popular-names.txt"
    FILENAME_REV=${FILENAME}.rev
    FILENAME_REV_TMP=${FILENAME}.temp
    rm -rf $FILENAME_REV
    rm -rf $FILENAME_REV_TMP
    tac $FILENAME > $FILENAME_REV 
    touch $FILENAME_REV_TMP
    cnt=0
    while read line
    do
        if [ $cnt -ge $max ]; then
            break;
        fi
        echo $line >> $FILENAME_REV_TMP
        cnt=$((++cnt))
    done < $FILENAME_REV

    tac $FILENAME_REV_TMP

    rm -rf $FILENAME_REV
    rm -rf $FILENAME_REV_TMP

fi

# 確認用
if [ $MODE = "確認" ]; then
    FILENAME="popular-names.txt"
    N=$1
    tail -n $N $FILENAME
fi
