
export LANG=ja_JP.UTF-8
#export PATH="/usr/local/bin:$PATH"
autoload -Uz compinit
compinit

autoload -Uz colors
colors

#setting history
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000

autoload -Uz select-word-style
select-word-style default
zstyle ':zle:*' word-chars " /=;@:{},|"
zstyle ':zle:*' word-style unspecified

zstyle ':completion*' matcher-list 'm:{a-z}={A-Z}'

# ../ $B$N8e$O:#$$$k%G%#%l%/%H%j$rJd40$7$J$$(B
zstyle ':completion:*' ignore-parents parent pwd ..

#sudo $B$N8e$m$G%3%^%s%I$rJd40$9$k(B
zstyle ':completion:*:processes' command 'ps x -o pid,s,args'

PROMPT="%{${fg[red]}%}%n@%m%{${fg[blue]}%} [%T]%{${reset_color}%} [%4~]
$ "
#vcs_info$B%m!<%I(B
autoload -Uz vcs_info
#PROMPT$BJQ?tFb$GJQ?t;2>H$9$k(B
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"
zstyle ':vcs_info:*' formats "%F{green}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'

#vcs$BI=<((B
##$B%W%m%s%W%HI=<(A0$K(Bvcs_info$B8F$S=P$7(B
precmd() { vcs_info }
RPROMPT='${vcs_info_msg_0_}'
####################################
#$B%*%W%7%g%s(B
setopt print_eight_bit
#$B%S!<%W2;$r>C$9(B
setopt no_beep
#$B%U%m!<%3%s%H%m!<%k$rL58z$K(B
setopt no_flow_control
# '#'$B0J9_$r%3%a%s%H$H$7$F07$&(B
setopt interactive_comments
#$B%G%#%l%/%H%jL>$@$1$G(Bcd$B$9$k(B
setopt auto_cd
#cd$B$7$?$i<+F0E*$K(Bpusd$B$9$k(B
setopt auto_pushd
#$B=EJ#$7$?%G%#%l%/%H%j$rDI2C$7$J$$(B
setopt pushd_ignore_dups
#$BF1;~$K5/F0$7$?(Bzsh$B$N4V$G%R%9%H%j$r6&M-(B
setopt share_history
#$BF1$8%3%^%s%I$r%R%9%H%j$K;D$5$J$$(B
#setopt hist_ignore_all_dups
#$B%9%Z!<%9$+$i;O$^$k%3%^%s%I9T$O%R%9%H%j$K;D$5$J$$(B
setopt hist_ignore_space
#$B%R%9%H%j$KJ]B8$9$k$H$-M>7W$J%9%Z!<%9$r:o=|$9$k(B
setopt hist_reduce_blanks
#$B9b5!G=$J%o%$%k%I%+!<%IE83+$r$9$k(B
setopt extended_glob

######################################
#$B%(%$%j%"%9(B
alias la='ls -la'
alias ll='ls -l'

alias mkdir='mkdir -p'

alias javac='javac -J-Dfile.encoding=UTF-8'
alias java='java -Dfile.encoding=UTF-8'
alias mics="ssh -D 1080 g1344919@cc2000.kyoto-su.ac.jp"
alias cl="clear"
alias e="emacs"
alias py="python"
alias py3="python3"
alias v="vim"
alias ptex2pdf="ptex2pdf -l"
alias sshcc="ssh g1344919@cc2000.kyoto-su.ac.jp"
alias tweetvim="vim -c TweetVimUserStream"
alias sudo='sudo '

#$B%0%m!<%P%k%(%$%j%"%9(B
alias -g L='| less'
alias -g G='| grep'

#ls$B?'IU$1(B
export LSCOLORS=gxfxcxdxbxegedabagacad
export LS_COLORS='di=01;34:ln=01;35:so=01;32:ex=01;31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
export CLICOLORS=true
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
alias ls='ls -G'

#$B4D6-JQ?t(B
export PATH="/usr/local/Cellar/openssl/1.0.2a-1/bin:/usr/local/bin:/opt/local/bin:/opt/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/Library/Tex/texbin:/Users/takuro/Documents/EGGX/:/Users/takuro/Documents/EGGX/:/Applications/eclipse/android-sdk-macosx/platform-tools:/Applications/eclipse/android-sdk-macosx/tools:$PATH"

export GREP_OPTIONS='--color=auto'
export HOMEBREW_NO_ANALYTICS=1
