#!/bin/bash
#添加PY支持
cp -rf $GITHUB_WORKSPACE/DIY/png/图标11-1.png app/src/main/res/drawable/app_banner.png
cp -rf $GITHUB_WORKSPACE/DIY/png/背景5.png app/src/main/res/drawable/app_bg.png
cp -rf $GITHUB_WORKSPACE/DIY/png/图标11.png app/src/main/res/drawable-hdpi/app_icon.png
cp -rf $GITHUB_WORKSPACE/DIY/png/图标11.png app/src/main/res/drawable-xhdpi/app_icon.png
cp -rf $GITHUB_WORKSPACE/DIY/png/图标11.png app/src/main/res/drawable-xxhdpi/app_icon.png
cp -rf $GITHUB_WORKSPACE/DIY/png/图标11.png app/src/main/res/drawable-xxxhdpi/app_icon.png
cp -rf $GITHUB_WORKSPACE/DIY/png/等待图标.png app/src/main/res/drawable/icon_loading.png
cp -rf $GITHUB_WORKSPACE/DIY/png/等待图标.png app/src/main/res/drawable-xhdpi/icon_loading.png
cp -rf $GITHUB_WORKSPACE/DIY/dc/epg_data.json app/src/main/assets/epg_data.json
cp -rf $GITHUB_WORKSPACE/DIY/dc/URL.java app/src/main/java/com/github/tvbox/osc/bbox/constant/URL.java
cp -rf $GITHUB_WORKSPACE/DIY/dc/StoreApiConfig.java app/src/main/java/com/github/tvbox/osc/bbox/api/StoreApiConfig.java
cp -rf $GITHUB_WORKSPACE/DIY/dc/ApiDialog.java app/src/main/java/com/github/tvbox/osc/bbox/ui/dialog/ApiDialog.java
cp -rf $GITHUB_WORKSPACE/DIY/dc/ModelSettingFragment.java app/src/main/java/com/github/tvbox/osc/bbox/ui/fragment/ModelSettingFragment.java
cp -rf $GITHUB_WORKSPACE/DIY/dc/Checker.java app/src/main/java/com/github/tvbox/osc/bbox/util/Checker.java
cp -rf $GITHUB_WORKSPACE/DIY/dc/App.java app/src/main/java/com/github/tvbox/osc/bbox/base/App.java
sed -i 's%tv.org.eu.bunnyabc%tv.org.eu.bunnyabc.zxy%g' app/build.gradle
sed -i 's%Jade%圆梦影视%g' app/src/main/res/values/strings.xml


echo 'DIY end'