#! /bin/bash

# 17. １列目の文字列の異なり
# 1列目の文字列の種類（異なる文字列の集合）を求めよ．
# 確認にはcut, sort, uniqコマンドを用いよ．

# 第一引数でmodeを選択
# - kaitou ... 回答コード実行
# - kakunin... 確認コード実行
MODE=$1
FILENAME="popular-names.txt"

# 使い方
# ./17.sh kaitou
# 第一引数 mode : kaitou ... 回答, kakunin ... 確認
if [ $MODE = "kaitou" ]; then
    # 回答用コード記述
    :
elif [ $MODE = "kakunin" ]; then
    # 確認用コード記述
    cut -f 1 popular-names.txt | sort | uniq
fi
