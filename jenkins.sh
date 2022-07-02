#!/bin/sh -ilex

echo "开始执行了vue脚本文件"

echo "开始下载node_module"
node -v
npm -v
npm install

echo "开始打包"
npm run build

echo "清空nginx下的文件"
rm -rf '/usr/share/nginx/html/dist'

echo "将jenkins打包的文件拷贝到nginx下"
cp -r '/var/lib/jenkins/workspace/部署viete/dist' '/usr/share/nginx/html/dist'