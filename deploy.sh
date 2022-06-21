#!/usr/bin/env sh

# 当发生错误时中止脚本
set -e

# 删除dist目录
rm -rf dist

# 构建dist
npm run build

# cd 到构建输出的目录下
cd dist

git init
git add .
git commit -m "website"

git remote add origin git@github.com:Zachliu1996/bohejizhang-website.git
git push -f -u origin master

cd -