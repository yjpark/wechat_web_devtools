#! /bin/bash

root_dir=$(cd `dirname $0`/.. && pwd -P)

nwjs_v=`cat $root_dir/nwjs_v`

cur_nwjs_v=""

if [ -f "$root_dir/dist/nwjs_version" ]; then
  cur_nwjs_v=`cat "$root_dir/dist/nwjs_version"`
fi

if [ "$cur_nwjs_v" != "$nwjs_v" ]; then
  echo "安装微信开发者工具对应nwjs版本：$nwjs_v"
  bash "$root_dir/bin/update_nwjs.sh"
fi

cd "$root_dir/dist"

bash "$root_dir/bin/replace_weapp_vendor.sh"
bash "$root_dir/bin/install_desktop.sh"
echo "安装完成"
