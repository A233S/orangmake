mkdir -p ~/bin
curl https://mirrors.tuna.tsinghua.edu.cn/git/git-repo > ~/bin/repo
sudo cp ~/bin/repo /bin/repo
sudo chmod a+x /bin/repo
repo init -u https://gitlab.com/OrangeFox/Manifest.git -b fox_9.0 --depth=1
repo sync --force-sync
git config --global http.version HTTP/1.1
