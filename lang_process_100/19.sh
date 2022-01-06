#! /bin/bash

# 19. 各行の1コラム目の文字列の出現頻度を求め，
# 出現頻度の高い順に並べる
# 各行の1列目の文字列の出現頻度を求め
# ，その高い順に並べて表示せよ．
# 確認にはcut, uniq, sortコマンドを用いよ．

# 第一引数でmodeを選択
# - kaitou ... 回答コード実行
# - kakunin... 確認コード実行
MODE=$1
FILENAME="popular-names.txt"

# 使い方
# ./xx.sh kaitou
# 第一引数 mode : kaitou ... 回答, kakunin ... 確認
if [ $MODE = "kaitou" ]; then
    # 回答用コード記述
    :
elif [ $MODE = "kakunin" ]; then
    # 確認用コード記述
    cut -f 1 $FILENAME | sort | uniq -c | sort -nr
fi
