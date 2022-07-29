git config --global user.email "qq2136602722@gmail.com"
git config --global user.name "A233S"
git config --global user.password @Tim1513812161
git init
git remote add orangmake https://github.com/A233S/orangmake.git
#自定义命令
echo okkkkkk > nok.txt
#自定义命令结束
git add .
git commit -m "add file"
#orangmake为仓库名,master为你需要的分支
git push --set-upstream orangmake master
