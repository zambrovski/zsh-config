alias zsh.edit="atom $ZSH_CONFIG"
alias zsh.cd="cd $ZSH_CONFIG"
alias zsh.stats='zsh_stats'

function zsh.refresh() {
  echo "... reloading ~/.zshrc"
  source ~/.zshrc
}

function zsh.upgrade() {
  upgrade_oh_my_zsh
}

function zsh.plugins() {
    PLUGIN_PATH="$ZSH_CONFIG/plugins/"
    for plugin in $plugins; do
        echo $plugin
    done
}

function zsh.lazygit() {
  ( cd $ZSH_CONFIG ; lazygit )
}
