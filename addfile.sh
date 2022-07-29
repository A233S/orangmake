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

#git config http.version HTTP/1.1
#git config --global http.postBuffer 524288000
#git config http.postBuffer 524288000
#git config --global http.version HTTP/1.1
git add Android.bp Makefile README.md addfile.sh art bionic bootable bootstrap.bash build dalvik external frameworks hardware libcore libnativehelper prebuilts run.sh sdk system

git commit -m "add file"
git push orangmake master
git add toolchain tools vendor
git commit -m "add file"
git push orangmake master
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
