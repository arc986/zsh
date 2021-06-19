HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
setopt INC_APPEND_HISTORY
setopt hist_ignore_dups
case `uname` in
  Darwin)
    alias ls='ls -FG '# commands for OS X go here
  ;;
  Linux)
    alias ls='ls --color=auto -p'
  ;;
esac

# EXPORTS
export GPG_TTY=$(tty)
export GOPATH=~/.libs/go
export GOBIN=$GOPATH/bin
export PATH=$GOBIN:$PATH

# ALIAS
alias vim="nvim"
alias mutt="neomutt"

alias u-zsh="wget -N https://raw.githubusercontent.com/arc986/zsh/main/.zsh{rc,env} -P ~/"

alias i-nv="rm -Rf ~/.config/nvim;git clone --depth 1 --shallow-submodules --recurse-submodules https://github.com/arc986/nvim.git ~/.config/nvim;vim +PlugInstall +'CocInstall -sync coc-json coc-sh coc-css coc-html coc-tsserver coc-markdownlint coc-pyright coc-rust-analyzer coc-vetur' +qall"
alias u-nv="git -C ~/.config/nvim reset --hard origin/main;git -C ~/.config/nvim pull;vim +PlugUpdate +'CocInstall -sync coc-json coc-sh coc-css coc-html coc-tsserver coc-markdownlint coc-pyright coc-rust-analyzer coc-vetur' +qall"

alias i-mutt="rm -Rf ~/.config/mutt;git clone --depth 1 --shallow-submodules --recurse-submodules https://github.com/arc986/neomutt.git ~/.config/mutt"
alias u-mutt="git -C ~/.config/mutt reset --hard origin/main;git -C ~/.config/mutt pull"

alias i-kitty="rm -Rf ~/.config/kitty;git clone --depth 1 --shallow-submodules --recurse-submodules https://github.com/arc986/kitty.git ~/.config/kitty"
alias u-kitty="git -C ~/.config/kitty reset --hard origin/main;git -C ~/.config/kitty pull"

alias i-bgima="rm -Rf ~/.config/bgima;git clone --depth 1 --shallow-submodules --recurse-submodules https://github.com/arc986/bgima.git ~/.config/bgima"
alias u-bgima="git -C ~/.config/bgima reset --hard origin/main;git -C ~/.config/bgima pull"

#alias o-gpod="nautilus ~/.local/share/gnome-podcasts/"                                                                                                                                                                                  
#alias c-gpod="rm -Rf ~/.local/share/gnome-podcasts/Downloads/*"

# alias wlan-on="sudo netctl start"
# alias wlan-st="sudo netctl status"
# alias wlan-of="sudo netctl stop"

# alias ssh-on="sudo systemctl start sshd"
# alias ssh-st="sudo systemctl status sshd"
# alias ssh-of="sudo systemctl stop sshd"

# alias kvm-on="sudo systemctl start libvirtd.service"
# alias kvm-st="systemctl status libvirtd.service"
# alias kvm-of="sudo systemctl stop libvirtd.service"

# alias pac-install="sudo pacman -S"
# alias pac-search="pacman -Ss"
# alias pac-remove="sudo pacman -R"
# alias pac-purge="sudo pacman -Rsndc"
# alias pac-update="sudo pacman -Syu"
# alias pac-clean="sudo pacman -Scc;sudo pacman -Rsdnc $(pacman -Qqdt)"
