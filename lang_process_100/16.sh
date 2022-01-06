#! /bin/bash

# 16. ファイルをN分割するPermalink
# 自然数Nをコマンドライン引数などの手段で受け取り，
# 入力のファイルを行単位でN分割せよ．
# 同様の処理をsplitコマンドで実現せよ．

# 第一引数でmodeを選択
# - kaitou ... 回答コード実行
# - kakunin... 確認コード実行
MODE=$1
FILENAME="popular-names.txt"

# 使い方
# ./16.sh kaitou 5
# 第一引数 mode : kaitou ... 回答, kakunin ... 確認
# 第二引数 N : 入力行だけ表示
N=$2
# 出力結果ディレクトリ作成
rm -rf output
mkdir output
cd output
if [ $MODE = "kaitou" ]; then
    # 回答用コード記述
    cnt=0
    # ファイル行数カウント
    while read line
    do
        cnt=$((++cnt))
    done < ../$FILENAME
    # ファイル長さ
    # 1ファイルあたりの出力行数計算
    LINE_NUM_PER_FILE=$(( cnt / N + 1 ))
    # 最低でも1行の出力を保証
    if [ $LINE_NUM_PER_FILE -le 0 ]; then
        LINE_NUM_PER_FILE=1
    fi
    # 出力
    cnt=0
    file_num=0
    OUTPUT=""
    while read line
    do
        # ファイル作成
        if [ $(( cnt % LINE_NUM_PER_FILE )) -eq 0 ]; then
            file_num=$((++file_num))
            OUTPUT="output_"$file_num".txt"
        fi
        cnt=$((++cnt))
        echo $line >> $OUTPUT
    done < ../$FILENAME
    # splitの動作に合わせて、不足分の空ファイル作成
    for (( i=$(( file_num + 1 )); i<$N; i++ )); do
        OUTPUT="output_"$i".txt"
        touch $OUTPUT 
    done
elif [ $MODE = "kakunin" ]; then
    # 確認用コード記述
    split -n l/$N ../$FILENAME # -n l/n の書き方だと、行中で分割されない(テキストで有効)
fi
