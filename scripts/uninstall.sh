#! /bin/bash
# install desktop

root_dir=$(cd `dirname $0`/.. && pwd -P)

# TODO 能不能删
need_remove="$HOME/.local/share/applications/wechat_dev_tools.desktop"
if [ -f $need_remove ]; then
  chmod $USER $need_remove
  rm -fv $need_remove
fi

# TODO 能不能删
need_remove="$HOME/.wechat_dev_tools"
if [ -d $need_remove ]; then
  chmod $USER $need_remove
  rm -rfv $need_remove
fi

# TODO 能不能删
need_remove="$HOME/.config/微信web开发者工具"

chmod $USER $need_remove
rm -rfv $need_remove

echo "卸载完成"
