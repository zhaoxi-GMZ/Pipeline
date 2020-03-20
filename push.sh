#!/bin/bash
# 上面中的 #! 是一种约定标记, 它可以告诉系统这个脚本需要什么样的解释器来执行;

echo '----------------------------------------------start push----------------------------------------------'
echo "当前分支："
git branch 

git_branch()
{  read -p "是否切换分支？Y|N：" branch_switch
  if [ "$branch_switch" == "Y" ];then
       read -p '请输入要切换的分支的名称：' branch_name 
       git switch $branch_name
#       if [ "$branch_name" = branch ];then
#       echo '切换分支成功，3秒后将关闭此页面.......'
       sleep 3
       exit
#       else
#       echo '请输入正确的分支名称'
       
       
  elif [  "$branch_switch" == "N" ];then
       git add .
       read -p '请输入提交描述信息：' commit_m
       git commit -m $commit_m
       echo '推送到远程仓库：'
       git push origin master
      echo '您已成功推送至远程仓库，改页面将在三秒后关闭......'
      sleep 3s
      exit
  else
    echo '请按提示输入：'
    git_branch;
  fi
}
 git_branch;