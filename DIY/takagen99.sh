#!/bin/bash
#添加PY支持
cp -rf $GITHUB_WORKSPACE/DIY/png/图标9-1.png app/src/main/res/drawable/app_banner.png
cp -rf $GITHUB_WORKSPACE/DIY/png/图标9.png app/src/main/res/drawable/app_icon.png
cp -rf $GITHUB_WORKSPACE/DIY/png/app_bg.png app/src/main/res/drawable/app_bg.png
sed -i 's%TVBox%大师影视%g' app/src/main/res/values-zh/strings.xml
sed -i 's%>https://chengxue2020.github.io/Cat-ports/pg/jsm.json<%>https://ghp.ci/https://raw.githubusercontent.com/wwz09/ubuntu/main/main.json<% g' app/src/main/res/values-zh/strings.xml

echo 'DIY end'