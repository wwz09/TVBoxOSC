#!/bin/bash
#添加PY支持
cp -rf $GITHUB_WORKSPACE/DIY/png/图标9-1.png app/src/main/res/drawable/app_banner.png
cp -rf $GITHUB_WORKSPACE/DIY/png/图标9.png app/src/main/res/drawable-hdpi/app_icon.png
cp -rf $GITHUB_WORKSPACE/DIY/png/图标9.png app/src/main/res/drawable-xhdpi/app_icon.png
cp -rf $GITHUB_WORKSPACE/DIY/png/图标9.png app/src/main/res/drawable-xxhdpi/app_icon.png
cp -rf $GITHUB_WORKSPACE/DIY/png/图标9.png app/src/main/res/drawable-xxxhdpi/app_icon.png
cp -rf $GITHUB_WORKSPACE/DIY/png/app_bg.png app/src/main/res/drawable/app_bg.png
# sed -i 's%com.github.tvbox.osc%com.github.tvbox.osc.${{ matrix.osName }}%g' app/build.gradle
# sed -i 's%XXPermissions:13.6%XXPermissions:13.5%g' app/build.gradle
sed -i 's%com.github.tvbox.osc%com.github.tvbox.osc.q21%g' app/build.gradle
sed -i 's%TVBox%大师影视%g' app/src/main/res/values/strings.xml
sed -i 's%(HawkConfig.API_URL, "");%(HawkConfig.API_URL, "https://git.wwz09.top:8888/wwz09/ubuntu/raw/branch/main/main.json");%g' app/src/main/java/com/github/tvbox/osc/api/ApiConfig.java   
sed -i 's%Hawk.put(HawkConfig.PLAY_TYPE, 1);%Hawk.put(HawkConfig.HOME_REC, 0);       // Home Rec 0=豆瓣, 1=推荐, 2=历史\n Hawk.put(HawkConfig.PLAY_TYPE, 1);      // Player   0=系统, 1=IJK, 2=Exo\n Hawk.put(HawkConfig.IJK_CODEC, "硬解码"); // IJK Render 软解码, 硬解码\n%g' app/src/main/java/com/github/tvbox/osc/base/App.java


echo 'DIY end'
