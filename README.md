# fishDotFiles

保存一些在Ubuntu22/24下的配置，青春过半，远离Arch。

## 一些配置文件

```
cd ~ && \
git clone https://github.com/sharkocha/fishDotFiles.git
```

可以根据需求创建配置软连接，bashrc中的配置可以参考需要的部分。

## Install restricted addons

```
sudo apt install ubuntu-restricted-addons ubuntu-restricted-extras -y
```

include some decoder and microsoft fonts.

## 工具和依赖的安装

- JetBrainsMono Nerd Font: 我喜欢的等宽字体，适用于终端和编程。
    - 下载地址 [here](https://www.nerdfonts.com/font-downloads).
    - Install font manager for Ubuntu: `sudo apt install font-manager`.
    - Install font in font manager.
- `kitty`: GPU friendly terminal emulator.
    - make soft link for config: `ln -s ~/fishDotFiles/kitty/ ~/.config/kitty`.
- `alacritty`: Another GPU friendly terminal emulator.
    - make soft link for config: `ln -s ~/fishDotFiles/alacritty/ ~/.config/alacritty`.
- vscode: 官网下载deb包安装，安装时可同意添加microsoft库到apt，后续通过apt即可更新scode.
    - snap中安装的vscode是阉割版本，无法输入中文
- `git`
- `build-essentials`
- `golang`(snap for latest)
- `rust`: 不要使用apt安装，否则nvim或vscode写rust时会有一些问题。 使用`rustup`安装和升级版本。
    - `curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh`
- `miniconda`: virtual env for python, [see this](https://docs.conda.io/projects/miniconda/en/latest/miniconda-install.html).
- `openssh-server`: for SSH serving or connecting
    - use `sudo systemctl start ssh`(enable) to start serving, edit `/etc/ssh/sshd_config` and reboot for SSH serving port changing.
- `htop` : better top.
- `nload`: for network rate monitoring, use `sudo nload -m`.
- `tmux`
    - make soft link for config: `ln -s ~/fishDotFiles/.tmux.conf ~/.tmux.conf`.
    - 终端复用
- `ranger`:
    - make soft link for config: `ln -s ~/fishDotFiles/ranger/ ~/.config/ranger`.
    - use `ranger --copy-config=all` to get default config files.
    - python编写的终端文件浏览器
- `fzf` for file searching.
- `neovim`(snap)
    - 直接使用lazyvim懒人配置
    - `git clone https://github.com/LazyVim/starter ~/.config/nvim`
    - `rm -rf ~/.config/nvim/.git`
- `perf`
    - `sudo apt install linux-tools-common`.
    - And follow the command.
- `speedtest-cli`
    - `sudo apt install curl`
    - `curl -s https://packagecloud.io/install/repositories/ookla/speedtest-cli/script.deb.sh | sudo bash`
    - `sudo apt install speedtest`
    - 方便测试当前上网质量
- `valgrind`
    - `sudo apt install valgrind`
    - 代码测试
- `docker`
    - `sudo snap install docker`
    - 在snap版配置文件中设置代理加速: `/var/snap/docker/current/config/daemon.json`
    - 重启snap版docker `sudo snap restart docker`
    - or `sudo systemctl restart snap.docker.docker.dockerd.service`
- `lazydocker`
    - github库克隆并在bash绑定命令
- `lazygit`
    - github库克隆并在bash绑定命令
- `dotnet`
    - `sudo snap install dotnet-sdk --classic`
- `yazi`
    - snap
    - make soft link for config: `ln -s ~/fishDotFiles/yazi/ ~/.config/`.
    - add conf from bashrc
    - rust编写的终端文件浏览器
- `slides`
    - `sudo snap install slides`
    - present markdown in slides in terminal.
    - 以幻灯片形式在终端显示markdown文件内容，go语言编写的程序，显示效果一般，不能居中，但是跨平台，有需要可以在windows使用。
- `mdp`
    - `sudo apt install mdp`
    - 以幻灯片形式在终端显示markdown文件内容，C语言编写的程序，可以居中，仅限于Linux，只支持部分markdown标记。
- `glow`
    - `sudo snap install glow`
    - 终端渲染markdown in terminal
- `termshark`
    - `sudo apt install termshark`
    - 终端版wireshark
- `nexttrace`
    - `git clone https://github.com/nxtrace/NTrace-core.git`
    - 友好tracerouter
- `doggo`
    - `git clone https://github.com/mr-karan/doggo.git`
    - 友好DNS查询客户端
- `nali`
    - `git clone https://github.com/zu1k/nali.git`
    - 友好IP查询工具（本地版）
- `typora`
    - `sudo snap install typora`
    - 优雅markdown编辑器
- `WPS`
    - 官网下载deb包安装
    - 设置语言为中文
        - `cd /opt/kingsoft/wps-office/office6/mui`
        - `sudo mv en_US en_US-bak`
        - `sudo cp -r zh_CN en_US`
- `WeChat`
    - 官网下载deb包安装
- `QQ`
    - 官网下载deb包安装
- latex环境
    - `sudo add-apt-repository ppa:sunderme/texstudio`
    - `sudo apt update`
    - `sudo apt upgrade`
    - pdflatex可能不支持默认的中文fandol字体，可以选择修改编译器为XeLaTex。或者，如果有Windows下的字体，可以显示指定字体族
    - `\documentclass[fontset=windows]`
- `vlc`
    - `sudo apt install vlc`
    - video player
- obsidian
    - 官网下载deb包安装，不要使用snap版本，不然会有笔记图片无法加载等问题
- VirtualBox虚拟机软件
    - sudo apt install virtualbox virtualbox-ext-pack virtualbox-guest-additions-iso
    - sudo usermod -aG vboxusers yourusername
    - 安装的windows需要激活？使用[脚本](https://github.com/massgravel/Microsoft-Activation-Scripts)
        - 在powershell中执行：`irm https://get.activated.win | iex`
    - 调整虚拟机磁盘大小：在“工具”、“介质”中选择对应虚拟磁盘，右键属性设置大小，而后在虚拟机中添加相应空间。
        - 虚拟机为windows时，可使用DiskGenius方便扩容。
    - 如果ubuntu22虚拟机无法安装vbox扩展，可能需要先安装依赖：
        - `build-essential, dkms, linux-headers-$(uname -r)`
- JetBrains全家桶：都用snap安装
- 安装多版本PHP
    - `sudo apt install software-properties-common -y`
    - `sudo add-apt-repository ppa:ondrej/php -y`
    - `sudo apt update`
    - `sudo apt upgrade`
    - 安装指定版本（PHP 8.3、8.2、8.1、8.0、7.4、7.3、7.2、7.1、7.1 或 5.6）
        - `sudo apt install php8.3`
    - 安装扩展（`sudo apt install phpX.X-extension_name`）如：
        - `sudo apt install php8.3-mysql`
        - `sudo apt install php7.4-mysql`
    - 一般来说，很多场景需要安装对应的cgi（如配置phpstorm解释器）
        - `sudo apt install php7.4-cgi`
    - 还有操作字符串的mbstring扩展
        - `sudo apt install php7.4-mbstring`
- Oklular多类型文档查看：snap安装最新版
- kchmviewer：apt安装，用于查看chm文档
- utools：官网下载deb包安装，但是当前不支持ubuntu wayland截图，无所谓
    - 通过Startup Applications设置开机自启动。
- snipaste：官网下载Appimage包
    - 安装依赖：`sudo apt install libfuse2`
    - 软件内设置开机自启动，其实效果还是体现在Startup Applications。
- GHex：GUI二进制编辑器，使用apt安装
- ToDesk: 远程连接软件，官网下载deb包

## 字体设置

### Install new fonts

Copy `.ttf` file to `/usr/share/fonts/` or its subdirectories and do:

```
cd /usr/share/fonts/
mkfontscale
mkfontdir
fc-cache
```

If you don't have those commands:

```
sudo apt-get -y install fontconfig xfonts-utils
```

NOTE: we can copy fonts from `C:\Windows\Fonts` of a Windows host.

### 中文字体怪异

主要是因为对于CJK类的字体，很多Linux系统不是优先显示简体中文的中文符号，因此需要更改配置文件来调整默认顺序。

Open file:

```
sudo vim /etc/fonts/conf.d/64-language-selector-cjk-prefer.conf
```

把SC调整到前面

![](./Imgs/cjd_font.png)

Then update the font cache:

```
fc-cache -fv
```

Check if we can get "Noto Sans CJK SC" "Regular"

```
fc-match -s | grep 'Noto Sans CJK'
```

重启

