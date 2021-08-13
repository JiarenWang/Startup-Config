#!/bin/bash
cd /Users/anjuke/qiaofang_ios
echo "检出develop_i-qiaofang_2.25.0"
git checkout develop_i-qiaofang_2.25.0
echo "拉取develop_i-qiaofang_2.25.0"
git pull --verbose upstream develop_i-qiaofang_2.25.0
echo "检出wjr_fix_path_2.25"
git checkout wjr_fix_path_2.25
echo "合并develop_i-qiaofang_2.25.0到wjr_fix_path_2.25"
git merge --verbose develop_i-qiaofang_2.25.0

git push origin refs/heads/wjr_fix_path_2.25:refs/heads/wjr_fix_path_2.25 
