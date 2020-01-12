#manjaro自动配置使用环境
#!/usr/bin/env zsh

PATH='/bin/:/sbin/:/usr/bin/:/usr/sbin/:/usr/local/bin/:/usr/local/sbin/:~/bin/'
export PATH

#更换软件源
echo '开始更换默认源为国内软件源'
echo '#ali\nServer=http://mirrors.aliyun.com/archlinux/$repo/os/$arch\n#qinghua\nServer=https://mirrors.tuna.tsinghua.edu.cn/archlinux/$repo/os/$arch' >> /etc/pacman.d/mirrors && echo '更换源成功'

#更新系统
echo '开始全面更新系统'
sudo pacman -Syu && echo '全面更新成功'

#更新软件源并导入公匙
echo '开始更新源并导入arch公匙'
sudo pacman -Sy && sudo pacman -S archlinuxcn-keyring && echo '更新源以及导入公匙成功'

#安装中文输入法并根据fcitx的wiki所提供的方法来开启中文
#参见https://wiki.archlinux.org/index.php/Fcitx_(%E7%AE%80%E4%BD%93%E4%B8%AD%E6%96%87)
echo '开始下载fcitx'
sudo pacman -S fcitx fcitx-configtool && echo 'fcitx下载成功'
echo '开始配置fcitx' && echo 'GTK_IM_MODULE=fcitx\nQT_IM_MODULE=fcitx\nXMODIFIERS="@im=fcitx"' >> ~/.pam_environment && source ~/.pam_environment && echo 'fcitx &' >> ~/.xinitrc && source ~/.xinitrc && echo 'fcitx配置成功'

#需要安装的软件
software_aur=(wqy-zenhei amule wps-office netease-cloud-music electron-ssr aria2-fast qBittorrent SMPlayer baidunetdisk-bin Vim tor-browser)
software_alone='oh-my-zsh zsh-pure-prompt zsh-syntax-highlighting'

#aur
echo '开始从aur下载软件'
sudo pacman -S $software_aur && echo '下载成功'

#alone
echo '开始安装单独包'
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)" && cd $HOME/.oh-my-zsh/plugins/ && git clone 'https://github.com/zsh-users/zsh-syntax-highlighting.git' && git clone 'https://github.com/sindresorhus/pure.git' && echo '单独包安装成功'

#下载配置文件
echo '创建仓库文件夹' && mkdir -p $HOME/Clone && echo '创建成功' && echo '切换到仓库文件夹' && cd $HOME/Clone && echo '切换成功'
echo '开始下载配置文件'
git clone 'https://github.com/tztnuaji/Personal-profile.git' && echo '配置文件下载完成，但有些涉及到目录的变量仍需手动更改，请修改后手动放置到合适的位置'
echo '另外自行配置xfce4桌面，xfce4终端配色是#1B1D24，使用主题是matcha-dark-azul，字体大小是14'
echo '全部事务已完成'
