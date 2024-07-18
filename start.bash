#!/bin/bash

# 输出日志路径
stdout_path=$(cd `dirname $0`;pwd)/stdout.log
# 1-1200秒随机延时
# 随机值$RANDOM值为1~32767
delay=$[$RANDOM%1200]
echo $delay

echo "$(date) $[$delay/60]分钟后开始执行" >> $stdout_path;
# sleep "$delay";
/root/github/MihoyoBBSTools/env/bin/python3 /root/github/MihoyoBBSTools/main.py >> $stdout_path;