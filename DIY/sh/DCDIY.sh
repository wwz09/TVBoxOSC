#!/bin/bash
#添加PY支持

sed -i 's%https://ghfast.top/https://raw.githubusercontent.com/wwz09/ubuntu/main/TXT/dc.json%https://ghfast.top/https://raw.githubusercontent.com/wwz09/ubuntu/main/TXT/dc.json%g' app/src/main/java/com/github/tvbox/osc/bbox/constant/URL.java
sed -i 's%https://ghfast.top/https://raw.githubusercontent.com/wwz09/ubuntu/main/main.json%https://ghfast.top/https://raw.githubusercontent.com/wwz09/ubuntu/main/main.json%g' app/src/main/java/com/github/tvbox/osc/bbox/constant/URL.java
sed -i 's%https://ghfast.top/https://raw.githubusercontent.com/wwz09/ubuntu/main/TXT/a.txt%https://ghfast.top/https://raw.githubusercontent.com/wwz09/ubuntu/main/TXT/a.txt%g' app/src/main/java/com/github/tvbox/osc/bbox/constant/URL.java
sed -i 's%https://ghfast.top/https://raw.githubusercontent.com/wwz09/ubuntu/main/TXT/dc.json%https://ghfast.top/https://raw.githubusercontent.com/wwz09/ubuntu/main/TXT/dc.json%g' app/src/main/java/com/github/tvbox/osc/bbox/ui/dialog/ApiDialog.java
sed -i 's%https://ghfast.top/https://raw.githubusercontent.com/wwz09/ubuntu/main/main.json%https://ghfast.top/https://raw.githubusercontent.com/wwz09/ubuntu/main/main.json%g' app/src/main/java/com/github/tvbox/osc/bbox/ui/dialog/ApiDialog.java
sed -i 's%https://ghfast.top/https://raw.githubusercontent.com/wwz09/ubuntu/main/TXT/dc.json%https://ghfast.top/https://raw.githubusercontent.com/wwz09/ubuntu/main/TXT/dc.json%g' app/src/main/java/com/github/tvbox/osc/bbox/base/App.java
sed -i 's%https://ghfast.top/https://raw.githubusercontent.com/wwz09/ubuntu/main/main.json%https://ghfast.top/https://raw.githubusercontent.com/wwz09/ubuntu/main/main.json%g' app/src/main/java/com/github/tvbox/osc/bbox/base/App.java
sed -i 's%硬解码%软解码%g' app/src/main/java/com/github/tvbox/osc/bbox/base/App.java

echo 'DIY end'
