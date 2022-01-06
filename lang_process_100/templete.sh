#! /bin/bash

# xx. xxxxxxxxxx

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
    :
fi
