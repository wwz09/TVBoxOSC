#!/bin/bash
#添加PY支持
cp -rf $GITHUB_WORKSPACE/DIY/png/图标6-1.png app/src/main/res/drawable/app_banner_b.png
cp -rf $GITHUB_WORKSPACE/DIY/png/app_bg.png app/src/main/res/drawable/app_bg.png
cp -rf $GITHUB_WORKSPACE/DIY/png/图标6.png app/src/main/res/drawable-hdpi/app_icon.png
cp -rf $GITHUB_WORKSPACE/DIY/png/图标6.png app/src/main/res/drawable-xhdpi/app_icon.png
cp -rf $GITHUB_WORKSPACE/DIY/png/图标6.png app/src/main/res/drawable-xxhdpi/app_icon.png
cp -rf $GITHUB_WORKSPACE/DIY/png/图标6.png app/src/main/res/drawable-xxxhdpi/app_icon.png
cp -rf $GITHUB_WORKSPACE/DIY/png/等待图标.png app/src/main/res/drawable/icon_loading.png
cp -rf $GITHUB_WORKSPACE/DIY/png/等待图标.png app/src/main/res/drawable-xhdpi/icon_loading.png
cp -rf $GITHUB_WORKSPACE/DIY/dc/epg_data.json app/src/main/assets/epg_data.json
cp -rf $GITHUB_WORKSPACE/DIY/dc/URL.java app/src/main/java/com/github/tvbox/osc/bbox/constant/URL.java
cp -rf $GITHUB_WORKSPACE/DIY/dc/ApiDialog.java app/src/main/java/com/github/tvbox/osc/bbox/ui/dialog/ApiDialog.java
cp -rf $GITHUB_WORKSPACE/DIY/dc/PlayFragment.java app/src/main/java/com/github/tvbox/osc/bbox/ui/fragment/PlayFragment.java
cp -rf $GITHUB_WORKSPACE/DIY/dc/PlayActivity.java app/src/main/java/com/github/tvbox/osc/bbox/ui/activity/PlayActivity.java
cp -rf $GITHUB_WORKSPACE/DIY/dc/ModelSettingFragment.java app/src/main/java/com/github/tvbox/osc/bbox/ui/fragment/ModelSettingFragment.java
cp -rf $GITHUB_WORKSPACE/DIY/dc/Checker.java app/src/main/java/com/github/tvbox/osc/bbox/util/Checker.java
cp -rf $GITHUB_WORKSPACE/DIY/dc/App.java app/src/main/java/com/github/tvbox/osc/bbox/base/App.java
sed -i 's%XXPermissions:13.6%XXPermissions:13.5%g' app/build.gradle
sed -i 's%tv.org.eu.bunnyabc%tv.org.eu.bunnyabc.duo%g' app/build.gradle
sed -i 's%Jade%酷影视%g' app/src/main/res/values/strings.xml

echo 'DIY end'