#!/bin/bash
INPUT_DIR="images/*"
OUTPUT_DIR="output/"

# $1はクオリティ 例えば85なら85%
for filepath in $INPUT_DIR; do

  ## 拡張子を取得
  extension=${filepath##*.}

  if [ $extension = "png" ] || [ $extension = "PNG" ]; then
    pngquant -o $OUTPUT_DIR${filepath##*/} ${filepath}
  elif [ $extension = "jpg" ] || [ $extension = "jpeg" ] || [ $extension = "JPEG" ] || [ $extension = "JPG" ]; then
    jpegoptim -m $1 -d $OUTPUT_DIR $filepath
  elif [ $extension = "mp4" ] || [ $extension = "MP4" ]; then
    ffmpeg -i $filepath -crf 23 $OUTPUT_DIR${filepath##*/}
  else
    echo 処理できませんでした。 ファイル名: $filepath 拡張子: $extension
  fi
done

echo 処理完了しました