#!/bin/bash
#添加PY支持
cp -rf $GITHUB_WORKSPACE/DIY/png/图标7-1.png app/src/main/res/drawable/app_banner.png
cp -rf $GITHUB_WORKSPACE/DIY/png/图标7.png app/src/main/res/drawable/app_icon.png
cp -rf $GITHUB_WORKSPACE/DIY/png/app_bg.png app/src/main/res/drawable/app_bg.png
sed -i 's%com.github.tvbox.osc.tk%com.github.tvbox.osc.t99%g' app/build.gradle
sed -i 's%TVBox%大仙TV%g' app/src/main/res/values-zh/strings.xml
sed -i 's%TVBox%大仙TV%g' app/src/main/res/values/strings.xml
sed -i 's%(HawkConfig.API_URL, HomeActivity.getRes().getString(R.string.app_source))%(HawkConfig.API_URL, "https://ghp.ci/https://raw.githubusercontent.com/wwz09/ubuntu/main/main.json")% g' app/src/main/res/values-zh/strings.xml

echo 'DIY end'