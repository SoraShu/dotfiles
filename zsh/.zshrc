# Load built modules
#module_path+=( "$HOME/.local/share/zinit/module/Src" )
#zmodload zdharma_continuum/zinit


# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

### End of Zinit's installer chunk


# Plugins

# Some zsh libraries
zinit snippet OMZ::lib/clipboard.zsh
zinit snippet OMZ::lib/completion.zsh
zinit snippet OMZ::lib/history.zsh
zinit snippet OMZ::lib/key-bindings.zsh
zinit snippet OMZ::lib/git.zsh
zinit snippet OMZ::lib/theme-and-appearance.zsh

# a fast prompt / theme
zinit ice depth=1; zinit light romkatv/powerlevel10k

# suggest and complete history commands 
zinit ice lucid wait='0' atload='_zsh_autosuggest_start'
zinit light zsh-users/zsh-autosuggestions
#bindkey '^_' autosuggest-accept

zinit ice lucid wait='0'
zinit light zsh-users/zsh-completions

# zsh-nix-shell
zinit ice lucid wait='0'
zinit light chisui/zsh-nix-shell

# completion for docker
zinit wait="1" lucid as="completion" for \
  OMZ::plugins/docker/_docker \
  OMZ::plugins/docker-compose/_docker-compose 

# completion for new *nix tools!
# zsh install by git
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
zinit ice mv="*.zsh -> _fzf" as="completion"
zinit snippet 'https://github.com/junegunn/fzf/blob/master/shell/completion.zsh'
zinit snippet 'https://github.com/junegunn/fzf/blob/master/shell/key-bindings.zsh'
zinit ice as="completion"
zinit snippet 'https://github.com/robbyrussell/oh-my-zsh/blob/master/plugins/fd/_fd'
zinit ice as="completion"
zinit snippet 'https://github.com/ogham/exa/blob/master/completions/zsh/_exa'

# fast syntax highlighting
zinit light zdharma-continuum/fast-syntax-highlighting

# use Alt+S to quickly add sudo
zinit snippet OMZ::plugins/sudo/sudo.plugin.zsh
bindkey '^[s' sudo-command-line

# quick path jump by `z <keywords>...`
# zinit ice lucid wait='1'
# zinit light skywind3000/z.lua

# tab using fzf
#zinit light Aloxaf/fzf-tab

# Enable auto completion
autoload -Uz compinit; compinit
zinit cdreplay -q

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export FZF_DEFAULT_COMMAND='fd --type f'

export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8


gpg-login() {
    export GPG_TTY=$(tty)
    echo "test" | gpg --clearsign > /dev/null 2>&1
}


# ===============================================
#                  PATH
export PATH="$HOME/app/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$PATH:/opt/riscv-toolchain/bin"
export PATH="$PATH:/opt/riscv-qemu/bin"

# ================================================

# alias
alias ls='exa'
alias lsi='exa --icons'
alias ll='exa -lh --icons'
alias la='exa -a'
alias gls='exa --git-ignore --icons'
alias grep='grep --color=auto'
#alias fd='fdfind'
#alias bat='batcat'
#alias x='atool -x'


# xopen alias
alias open="xdg-open"

# docker alias
alias dcu="docker compose up"
alias dcud="docker compose up -d"
alias dcd="docker compose down"

# git alias
alias gall="git add ."

# vimlike exit
alias :wq="exit"
alias :q="exit"

# zoxide
eval "$(zoxide init zsh)"
# thefuck
eval $(thefuck --alias)

if [ -e /home/sorashu/.nix-profile/etc/profile.d/nix.sh ]; then . /home/sorashu/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
