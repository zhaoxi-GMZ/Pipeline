#!/bin/bash
# 上面中的 #! 是一种约定标记, 它可以告诉系统这个脚本需要什么样的解释器来执行;

echo '------------------------------start push----------------------------------'
echo "当前分支："
git branch

  read -p "是否切换分支？Y|N：" branch_switch
  if [ "$branch_switch" == "Y" ];then
       read -p '请输入要切换的分支的名称：' branch_name 
       git switch $branch_name
       git add .
       resd -p '请输入描述信息：' commit_m
       git commit -m $commit_m
       git pull
       git push origin $branch_name
  elif [  "$branch_switch" == "N" ];then
       git add .
       read -p '请输入描述信息：' commit_m
       git commit -m $commit_m
       git push origin $branch_name
  else
    echo '请按提示输入：'
  fi


