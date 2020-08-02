# 安装需要链接的列表
# author: yantze@126.com
# date: 2017-11-30

# 当前文件的文件夹路径
CURRENT_SCRIPT_HOME=$(cd `dirname $0`; pwd)
echo $CURRENT_SCRIPT_HOME
# exit
TARGET_HOME=~/Library/Rime
# /Library/Input Methods/Squirrel.app

set -x # set debug what command do, same set -o xtrace

# 链接系统文件
for file in `ls       \
  opencc              \
  user.yaml           \
  installation.yaml   \
  default.custom.yaml \
  squirrel.custom.yaml\
  custom_phrase.txt   \
  key_bindings.yaml   \
  punctuation.yaml    \
  symbols.yaml        \
  essay.txt           \
  `; do
  # \rm -f "$TARGET_HOME/$file"
  ln -sf "$CURRENT_SCRIPT_HOME/$file" "$TARGET_HOME"
done

# 配置 luna_pinyin, double_pinyin, wubi 等词库
# extended.dict.yaml 有 import 其余三个词库
# 只需要在 luna_pinyin.custom.yaml 合并 luna_pinyin.dict 项目中的同名文件即可
for file in `ls   \
  luna_pinyin*    \
  double_pinyin*  \
  wubi*           \
  easy_en*        \
  emoji*          \
  `; do
  # \rm -f "$TARGET_HOME/$file"
  ln -sf "$CURRENT_SCRIPT_HOME/$file" "$TARGET_HOME"
done
set +x
