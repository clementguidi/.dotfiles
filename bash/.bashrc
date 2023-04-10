alias g="git"
alias l="ls -lh"
alias ll="ls -lha"
alias mv="mv -n"

source ~/.git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1

export PS1='{$?} \W$(__git_ps1 " (%s)")\$ '
export PKG_CONFIG_PATH="/usr/lib/pkgconfig"

export PATH="$HOME/.emacs.d/bin:$PATH"
alias doom-env-ssh="doom env -a '^SSH'"

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

load-completion-uftrace () {
    uftrace_completion_script="/usr/local/etc/bash_completion.d/uftrace"
    if [ -f $uftrace_completion_script ]; then
        . $uftrace_completion_script
    fi
}
