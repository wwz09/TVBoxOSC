#!/bin/bash
#添加PY支持
cp -rf $GITHUB_WORKSPACE/DIY/png/图标7-1.png app/src/main/res/drawable/app_banner.png
cp -rf $GITHUB_WORKSPACE/DIY/png/图标7.png app/src/main/res/drawable/app_icon.png
cp -rf $GITHUB_WORKSPACE/DIY/png/app_bg.png app/src/main/res/drawable/app_bg.png
sed -i 's%com.github.tvbox.osc.tk%com.github.tvbox.osc.t99%g' app/build.gradle
sed -i 's%TVBox%大仙TV%g' app/src/main/res/values-zh/strings.xml
sed -i 's%TVBox%大仙TV%g' app/src/main/res/values/strings.xml
sed -i 's%HomeActivity.getRes().getString(R.string.app_source))%"https://git.wwz09.top:8888/wwz09/ubuntu/raw/branch/main/main.json")% g' app/src/main/java/com/github/tvbox/osc/api/ApiConfig.java

echo 'DIY end'