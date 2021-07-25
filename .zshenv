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

alias ls="exa --icons --classify"
alias ll="exa --icons --git --classify --long"
alias lr="exa --icons --classify --tree --level=2"

alias u-zsh="wget -N https://raw.githubusercontent.com/arc986/zsh/main/.zsh{rc,env} -P ~/"

alias i-nv="rm -Rf ~/.config/nvim;git clone --depth 1 --shallow-submodules --recurse-submodules https://github.com/arc986/nvim.git ~/.config/nvim;vim +PlugInstall +'CocInstall -sync coc-json coc-sh coc-css coc-html coc-tsserver coc-markdownlint coc-pyright coc-rust-analyzer coc-vetur coc-rust-analyzer' +qall"
alias u-nv="git -C ~/.config/nvim reset --hard origin/main;git -C ~/.config/nvim pull;vim +PlugUpdate +'CocInstall -sync coc-json coc-sh coc-css coc-html coc-tsserver coc-markdownlint coc-pyright coc-rust-analyzer coc-vetur coc-rust-analyzer' +qall"

alias i-mutt="rm -Rf ~/.config/mutt;git clone --depth 1 --shallow-submodules --recurse-submodules https://github.com/arc986/neomutt.git ~/.config/mutt"
alias u-mutt="git -C ~/.config/mutt reset --hard origin/main;git -C ~/.config/mutt pull"

alias i-kitty="rm -Rf ~/.config/kitty;git clone --depth 1 --shallow-submodules --recurse-submodules https://github.com/arc986/kitty.git ~/.config/kitty"
alias u-kitty="git -C ~/.config/kitty reset --hard origin/main;git -C ~/.config/kitty pull"

# alias i-bg="rm -Rf $(xdg-user-dir PICTURES)/Background;git clone -b $(cat /sys/class/graphics/*/virtual_size|sed 's/,/_/g') --depth 1 --shallow-s"
# alias u-bg="git -C $(xdg-user-dir PICTURES)/Background reset --hard origin/$(cat /sys/class/graphics/*/virtual_size|sed 's/,/_/g')"

alias i-jupyter="rm -Rf ~/.jupyter;mkdir ~/.jupyter;cd ~/.jupyter;virtualenv .python;source .python/bin/activate;pip install jupyterlab numpy pandas;deactivate;cd ~/;~/.jupyter/.python/bin/jupyter lab"
alias jupyter-pip="~/.jupyter/.python/bin/python -m pip"

alias jupyter-on="if pgrep -f '[j]upyter' > /dev/null; then echo 'Running'; else nohup ~/.jupyter/.python/bin/jupyter lab > /dev/null 2>&1 &;echo 'Running'; fi"
alias jupyter-st="if pgrep -f '[j]upyter' > /dev/null; then echo 'Running'; else echo 'Stopped'; fi"
alias jupyter-of="kill -9 $(pgrep -f '[j]upyter');echo 'Stopped'"

#alias o-gpod="nautilus ~/.local/share/gnome-podcasts/"                                                                                                                                                                                  
#alias c-gpod="rm -Rf ~/.local/share/gnome-podcasts/Downloads/*"

# alias wlan-on="sudo netctl start"
# alias wlan-st="sudo netctl status"
# alias wlan-of="sudo netctl stop"

alias ssh-on="sudo systemctl start sshd"
alias ssh-st="systemctl status sshd"
alias ssh-of="sudo systemctl stop sshd"

alias kvm-on="sudo systemctl start libvirtd.service"
alias kvm-st="systemctl status libvirtd.service"
alias kvm-of="sudo systemctl stop libvirtd.service"

alias pk-I="sudo pacman -S"       
alias pk-S="pacman -Ss"      
alias pk-R="sudo pacman -R"      
alias pk-P="sudo pacman -Rsndc"     
alias pk-U="sudo pacman -Syyuu"      
alias pk-C="sudo pacman -Scc;sudo pacman -Rsdnc $(pacman -Qqdt)"
