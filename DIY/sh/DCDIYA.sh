#!/bin/bash
#添加PY支持

sed -i 's%https://gitea.com/404ynnub/resource/raw/branch/main/boxsource.json%https://git.wwz09.xin:5555/wwz09/ubuntu/raw/branch/main/TXT/dc.json%g' app/src/main/java/com/github/tvbox/osc/bbox/constant/URL.java
sed -i 's%http://www.饭太硬.net/tv/%https://git.wwz09.xin:5555/wwz09/ubuntu/raw/main/main.json%g' app/src/main/java/com/github/tvbox/osc/bbox/constant/URL.java
sed -i 's%http://www.饭太硬.net/tv%https://git.wwz09.xin:5555/wwz09/ubuntu/raw/main/live2.txt%g' app/src/main/java/com/github/tvbox/osc/bbox/constant/URL.java
sed -i 's%(Hawk.get(HawkConfig.API_URL, ""))%(Hawk.get(HawkConfig.API_URL, "https://git.wwz09.xin:5555/wwz09/ubuntu/raw/main/TXT/dc.json"))%g' app/src/main/java/com/github/tvbox/osc/bbox/ui/dialog/ApiDialog.java
sed -i 's%url + URL.DEFAULT_STORE_API_URL%"https://git.wwz09.xin:5555/wwz09/ubuntu/raw/main/TXT/dc.json"%g' app/src/main/java/com/github/tvbox/osc/bbox/ui/dialog/ApiDialog.java
sed -i 's%url + URL.DEFAULT_API_URL%"https://git.wwz09.xin:5555/wwz09/ubuntu/raw/branch/main/main.json"%g' app/src/main/java/com/github/tvbox/osc/bbox/ui/dialog/ApiDialog.java
sed -i 's%(HawkConfig.LIVE_URL, ""))%(HawkConfig.LIVE_URL, "https://git.wwz09.xin:5555/wwz09/IPTV-tv/raw/branch/main/merged_output.txt"))%g' app/src/main/java/com/github/tvbox/osc/bbox/ui/dialog/ApiDialog.java
# sed -i 's%URL.DEFAULT_STORE_API_URL%"https://git.wwz09.xin:5555/wwz09/ubuntu/raw/branch/main/TXT/dc.json"%g' app/src/main/java/com/github/tvbox/osc/bbox/base/App.java
# sed -i 's%// String defaultApiName%String defaultApiName%g' app/src/main/java/com/github/tvbox/osc/bbox/base/App.java
# sed -i 's%// String defaultApi%String defaultApi%g' app/src/main/java/com/github/tvbox/osc/bbox/base/App.java
# sed -i 's%// defaultApiMap.put%defaultApiMap.put%g' app/src/main/java/com/github/tvbox/osc/bbox/base/App.java
# sed -i 's%// defaultApiHistory.add%defaultApiHistory.add%g' app/src/main/java/com/github/tvbox/osc/bbox/base/App.java
# sed -i 's%// List<String>%List<String>%g' app/src/main/java/com/github/tvbox/osc/bbox/base/App.java
# sed -i 's%// Map<String, String>%Map<String, String>%g' app/src/main/java/com/github/tvbox/osc/bbox/base/App.java
# sed -i 's%// putDefault(HawkConfig.API%putDefault(HawkConfig.API%g' app/src/main/java/com/github/tvbox/osc/bbox/base/App.java
sed -i 's%硬解码%软解码%g' app/src/main/java/com/github/tvbox/osc/bbox/base/App.java

echo 'DIY end'
