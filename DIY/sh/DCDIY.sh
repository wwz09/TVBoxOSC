#!/bin/bash
#添加PY支持

sed -i 's%https://ghfast.top/https://raw.githubusercontent.com/wwz09/ubuntu/main/TXT/dc.json%https://gitea.wwz09.xin:5555/wwz09/ubuntu/raw/branch/main/TXT/dc.json%g' app/src/main/java/com/github/tvbox/osc/bbox/constant/URL.java
sed -i 's%https://ghfast.top/https://raw.githubusercontent.com/wwz09/ubuntu/main/main.json%https://gitea.wwz09.xin:5555/wwz09/ubuntu/raw/branch/main/main.json%g' app/src/main/java/com/github/tvbox/osc/bbox/constant/URL.java
sed -i 's%https://ghfast.top/https://raw.githubusercontent.com/wwz09/ubuntu/main/TXT/a.txt%https://gitea.wwz09.xin:5555/wwz09/ubuntu/raw/branch/main/live2.txt%g' app/src/main/java/com/github/tvbox/osc/bbox/constant/URL.java
sed -i 's%https://ghfast.top/https://raw.githubusercontent.com/wwz09/ubuntu/main/TXT/dc.json%https://gitea.wwz09.xin:5555/wwz09/ubuntu/raw/branch/main/TXT/dc.json%g' app/src/main/java/com/github/tvbox/osc/bbox/ui/dialog/ApiDialog.java
sed -i 's%https://ghfast.top/https://raw.githubusercontent.com/wwz09/ubuntu/main/main.json%https://gitea.wwz09.xin:5555/wwz09/ubuntu/raw/branch/main/main.json%g' app/src/main/java/com/github/tvbox/osc/bbox/ui/dialog/ApiDialog.java
sed -i 's%https://ghfast.top/https://raw.githubusercontent.com/wwz09/ubuntu/main/TXT/a.txt%https://gitea.wwz09.xin:5555/wwz09/IPTV-tv/raw/branch/main/merged_output.txt%g' app/src/main/java/com/github/tvbox/osc/bbox/ui/dialog/ApiDialog.java
sed -i 's%https://ghfast.top/https://raw.githubusercontent.com/wwz09/ubuntu/main/TXT/dc.json%https://gieat.wwz09.xin:5555/wwz09/ubuntu/raw/branch/main/TXT/dc.json%g' app/src/main/java/com/github/tvbox/osc/bbox/base/App.java
sed -i 's%https://ghfast.top/https://raw.githubusercontent.com/wwz09/ubuntu/main/main.json%https://gitea.wwz09.xin:5555/wwz09/ubuntu/raw/branch/main/main.json%g' app/src/main/java/com/github/tvbox/osc/bbox/base/App.java
sed -i 's%硬解码%软解码%g' app/src/main/java/com/github/tvbox/osc/bbox/base/App.java

echo 'DIY end'
