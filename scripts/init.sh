#! /bin/bash

# Store current position.
curDir=`pwd`
# Switch to working position, which is the root of the project.
workDir=$(cd "$(dirname "$0")/..";pwd)
cd $workDir

# ======

# Step 1: remove useless folder.
mkdir -p .trash  # this file is used to store the trash files.
mv .cache .trash/dot_cache
mv .git .trash/dot_git
echo "[1/2] The \`.cache\` and \`.git\` folders are moved into the \`.trash\` folder. Delete the \`.trash\` folder yourself to confirm no important data are dropped."
echo "[1/2] 已将 \`.cache\` 和 \`.git\` 文件夹丢弃至 \`.trash\` 文件夹，请手动删除 \`.trash\` 文件夹以确认没有重要数据被丢弃。"

# Step 2: initialize the git repository.
git init .
git add -A
git commit -m "feat: initialization"
echo "[2/2] Already initialized the git repository. Bind the remote repository and push to the remote yourself."
echo "[2/2] 已完成对本地 git 仓库的初始化，请手动绑定远程仓库。"

echo "There are still several steps to finish the initialization. Check the link below for further instruction!"
echo "https://cs-ziji.github.io/contribution/#初始化"
echo "在完成初始化之前，你还有一些步骤需要完成。请参考下方链接。"
echo "https://cs-ziji.github.io/contribution/#初始化"

# ======

# Recover the current position.
cd $curDir