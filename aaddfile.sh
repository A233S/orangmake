mkdir -p ~/bin
curl https://mirrors.tuna.tsinghua.edu.cn/git/git-repo > ~/bin/repo
sudo cp ~/bin/repo /bin/repo
sudo chmod a+x /bin/repo
repo init -u https://gitlab.com/OrangeFox/Manifest.git -b fox_9.0 --depth=1
repo sync --force-sync
rm -rf .repo
rm -rf /home/runner/work/orangmake/orangmake//.repo
echo "###ls"
ls -a
echo "###ls"
echo "###df"
df -h
echo "###df"
git config http.postBuffer 524288000
git config --global http.version HTTP/1.1
git lfs install
git lfs track "*.psd"
git add .gitattributes

git add toolchain
git commit -m "add file"
git push orangmake master
sleep 120
git add tools
git commit -m "add file"
git push orangmake master
sleep 120
git add vendor
git commit -m "add file"
git push orangmake master
sleep 120
git add Android.bp
git commit -m "add file"
git push orangmake master
sleep 120
git add Makefile
git commit -m "add file"
git push orangmake master
sleep 120
git add README.md
git commit -m "add file"
git push orangmake master
sleep 120
git add addfile.sh
git commit -m "add file"
git push orangmake master
sleep 120
git add art
git commit -m "add file"
git push orangmake master
sleep 120
git add bionic
git commit -m "add file"
git push orangmake master
sleep 120
git add bootable
git commit -m "add file"
git push orangmake master
sleep 120
git add bootstrap.bash
git commit -m "add file"
git push orangmake master
sleep 120
git add build
git commit -m "add file"
git push orangmake master
sleep 120
git add dalvik
git commit -m "add file"
git push orangmake master
sleep 120
git add external
git commit -m "add file"
git push orangmake master
sleep 120
git add frameworks
git commit -m "add file"
git push orangmake master
sleep 120
git add hardware
git commit -m "add file"
git push orangmake master
sleep 120
git add libcore
git commit -m "add file"
git push orangmake master
sleep 120
git add libnativehelper
git commit -m "add file"
git push orangmake master
sleep 120
git add prebuilts
git commit -m "add file"
git push orangmake master
sleep 120
git add run.sh
git commit -m "add file"
git push orangmake master
sleep 120
git add sdk
git commit -m "add file"
git push orangmake master
sleep 120
git add system
git commit -m "add file"
git push orangmake master
sleep 120

#git config http.version HTTP/1.1
#git config --global http.postBuffer 524288000
#git config http.postBuffer 524288000
#git config --global http.version HTTP/1.1
#git add Android.bp Makefile README.md addfile.sh art bionic bootable bootstrap.bash build dalvik external frameworks hardware libcore libnativehelper prebuilts run.sh sdk system

#git commit -m "add file"
#git push orangmake master
#git add toolchain tools vendor
#git commit -m "add file"
#git push orangmake master
#orangmake为仓库名,master为你需要的分支
#git push --set-upstream orangmake master
#while :
#do
#  echo "a233sp"
#  sleep 61
#  echo "start"
#  git push orangmake master
#  if [ $? == 0 ]
#  then
#  exit 0
#  fi
#done
