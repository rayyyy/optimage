#!/bin/bash
INPUT_DIR="images/*"
OUTPUT_DIR="output/"

# $1はクオリティ 例えば85なら85%
for filepath in $INPUT_DIR; do
  ## 拡張子を取得
  extension=${filepath##*.}

  # ## jpgの場合
  # if [ $extension = "jpg" ]; then
  #   echo jpgOK
  # fi

  ## pngの場合
  if [ $extension = "png" ]; then
    echo pngOK
  elif [ $extension = "jpg" ]; then
    jpegoptim -m $1 -d $OUTPUT_DIR $filepath
  elif [ $extension = "jpeg" ]; then
    jpegoptim -m $1 -d $OUTPUT_DIR $filepath
  else
    echo 処理できませんでした。 ファイル名: $filepath 拡張子: $extension
  fi
done

echo 処理完了しました