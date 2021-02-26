# ============================== STYLING ==============================
export PS1=" 🔆  \[\033[35m\]\W\[\033[m\] "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# ============================== ALIASES ==============================
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# ============================== GIT ==============================
if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi

function gfixup () {
    REVISION=$(git rev-parse $1)
    git commit --fixup=$REVISION && git rebase -i --autosquash $REVISION~
}

# ============================== FUNCTIONS ==============================
function db() {
  if [ $# -lt 1 ]; then
    echo "Supply an environment"
  else
    if [ "$1" = "dev" ]; then
      heroku pg:psql --app eighteen-oh-six-dev
    elif [ "$1" = "prod"]; then
      heroku pg:psql --app eighteen-oh-six
    else
      echo "Invalid environment"
    fi
  fi
}

function focus() {
  if [ $# -eq 1 ]; then
      open focus://focus?minutes=$1
  else
    open focus://focus
  fi
}
alias unfocus='open focus://unfocus'

function homestead() {
    ( cd ~/developer/laravel/homestead && vagrant $* )
}

# ============================== VARIABLES ==============================
export PATH=/usr/local/bin:/opt/local/bin:/opt/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/usr/local/jamf/bin
export VISUAL=vim
export EDITOR="$VISUAL"
export PATH="/usr/local/heroku/bin:$PATH"
export MANPAGER="/bin/sh -c \"col -b | vim -c 'set ft=man ts=8 nomod nolist nonu noma' -\""
export CLASSPATH="~/algs4/algs4.jar"
export ACKRC=".ackrc"

# PHP global Composer binaries
export PATH="/Users/Daniel/.composer/vendor/bin:$PATH"

# PHP version including mcrypt
export PATH="/usr/local/php5/bin:$PATH"
export PATH="vendor/bin:$PATH"

# NPM project binaries
export PATH="./node_modules/.bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

# MacVim
export PATH="/Applications/MacVim.app/Contents/bin/mvim:$PATH"

# NVM
export NVM_DIR="/usr/local/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# ============================== THUMBTACK ==============================
yr() {
  yoda restart $1; notify
}
notify() {
    osascript -e "display notification \"Command finished.\" with title \"Terminal\""
}
thrift() {
    cd ~/Thumbtack/thrift-definitions
    if [[ "$1" == "go" ]]; then
        ./build.py build go "$2" $GOPATH/src/github.com/thumbtack/go
    elif [[ "$1" == "php" ]]; then
        ./build.py build php "$2" ~/Thumbtack/website
    fi
    cd -
}
okta-login() {
    if [[ -z "$1" ]]; then
        >&2 echo 'Usage: okta-login <profile>';
        return 1;
    fi
    export OKTA_PROFILE=$1
    export AWS_PROFILE=$1_source
    ~/.okta/login
}
export OKTA_USERNAME="${USER}"
export OKTA_PASSWORD_CMD="security find-generic-password -a ${OKTA_USERNAME} -s okta-aws-cli -w"

export TTHOME=$HOME/Thumbtack
export PATH=$PATH:$TTHOME/website/vendor/php/composer/vendor/bin
export GOPATH=$TTHOME/go
export PATH=$PATH:$GOPATH/bin
export TT_WEBSITE_DIR=$TTHOME/website
export TT_PG_SCHEMA_DIR=$TTHOME/postgres-schema
export PATH=$PATH:$TTHOME/yoda
# tt-aws-session-credentials() { eval $(aws-session-credentials $@ -c ~/.aws/credentials 767177213176 dcapo); }
# tt-aws-session-credentials -n

export PATH=/usr/local/go/bin:$PATH
export PATH=/usr/local/opt/postgresql@9.6/bin:$PATH
export PATH=/usr/local/nvm:$PATH
export PATH=/Users/dcapo:$PATH
export PATH=/Users/dcapo/developer/sbt/bin:$PATH
export TT_TOPHAT_DIR="/Users/dcapo/Thumbtack/tophat"

export PATH=/opt/thumbtack/dp-sdk/google-cloud-sdk/bin:$PATH
