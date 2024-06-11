# fishDotFiles

To save my own config files. Work in Ubuntu22 well~ Clone it to:

```
cd ~ && \
git clone https://github.com/sharkocha/fishDotFiles.git
```

Make some soft links to these files when sitting in a new room.

## Usage tools (Dependencies and Installation)

- JetBrainsMono Nerd Font: a good font with glyphs for coding and terminal.
    - Download it [here](https://www.nerdfonts.com/font-downloads).
    - Install font manager for Ubuntu: `sudo apt install font-manager`.
    - Install font in font manager.
- `kitty`: GPU friendly terminal emulator.
    - make soft link for config: `ln -s ~/fishDotFiles/kitty/ ~/.config/kitty`.
- `git`
- `build-essentials`
- `golang`(snap for latest)
- `miniconda`: virtual env for python, [see this](https://docs.conda.io/projects/miniconda/en/latest/miniconda-install.html).
- `openssh-server`: for SSH serving or connecting
    - use `sudo systemctl start ssh`(enable) to start serving, edit `/etc/ssh/sshd_config` for port changing.
- `htop` : better top.
- `nload`: for network rate monitoring, use `sudo nload -m`.
- `tmux`
    - make soft link for config: `ln -s ~/fishDotFiles/.tmux.conf ~/.tmux.conf`.
- `ranger`:
    - make soft link for config: `ln -s ~/fishDotFiles/ranger/ ~/.config/ranger`.
    - use `ranger --copy-config=all` to get default config files.
- `fzf` for file searching.
- `lazygit`(snap `lazygit-gm`): for operation of git.
- `neovim`(snap)
    - make soft link for main config: `ln -s ~/fishDotFiles/nvim ~/.config/nvim`.
- `perf`
    - `sudo apt install linux-tools-common linux-tools-generic linux-cloud-tools-generic`.
- `speedtest-cli`
    - `sudo apt-get install curl`
    - `curl -s https://packagecloud.io/install/repositories/ookla/speedtest-cli/script.deb.sh | sudo bash`
    - `sudo apt-get install speedtest`
- Copy some useful config from bashrc file.
