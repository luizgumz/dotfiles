# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="sunrise"

plugins=(
    git
    archlinux
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# Check archlinux plugin commands here
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/archlinux

# Display Pokemon-colorscripts
# Project page: https://gitlab.com/phoneybadger/pokemon-colorscripts#on-other-distros-and-macos
#pokemon-colorscripts --no-title -s -r #without fastfetch
#pokemon-colorscripts --no-title -s -r | fastfetch -c $HOME/.config/fastfetch/config-pokemon.jsonc --logo-type file-raw --logo-height 10 --logo-width 5 --logo -

# fastfetch. Will be disabled if above colorscript was chosen to install
fastfetch -c $HOME/.config/fastfetch/config-compact.jsonc

# Set-up icons for files/directories in terminal using lsd
alias ls='eza --icons=always --color=always --group-directories-first'
alias ll='eza -la --icons=always --color=always --group-directories-first'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'
alias open='xdg-open'


# Set-up FZF key bindings (CTRL R for fuzzy history finder)
source <(fzf --zsh)

# Set-up Starship and Nerd Fonts
eval "$(starship init zsh)"

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

# ---- Personalização de Cores do Terminal (Vibe Cósmica) ----

# Forçar o zsh-syntax-highlighting a usar a nova paleta
typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path]='fg=#8261E6,underline'       # Caminhos de arquivos em Roxo Claro e Sublinhado
ZSH_HIGHLIGHT_STYLES[command]='fg=#D4AF37,bold'         # Comandos válidos no seu Dourado Fosco
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=#D34E9B,bold'   # Erros/Comandos inválidos em Rosa Cósmico

# Se você usar o plugin de auto-sugestões (zsh-autosuggestions)
# Deixa o texto sugerido em um roxo bem escuro/sutil, imitando o espaço
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#322A4D'
