#! /bin/bash

# 18. 各行を3コラム目の数値の降順にソート
# 各行を3コラム目の数値の逆順で整列せよ
# （注意: 各行の内容は変更せずに並び替えよ）．
# 確認にはsortコマンドを用いよ
# （この問題はコマンドで実行した時の結果と合わなくてもよい）．

# 第一引数でmodeを選択
# - kaitou ... 回答コード実行
# - kakunin... 確認コード実行
MODE=$1
FILENAME="popular-names.txt"

# 使い方
# ./18.sh kaitou
# 第一引数 mode : kaitou ... 回答, kakunin ... 確認
if [ $MODE = "kaitou" ]; then
    # 回答用コード記述
    :
elif [ $MODE = "kakunin" ]; then
    # 確認用コード記述
    sort -k 3 $FILENAME | tac
fi
