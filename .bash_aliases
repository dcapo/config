alias ls='ls -GFha'
alias ip="ifconfig | grep 'inet ' | grep -v 127.0.0.1 | awk '{print \$2}'"
alias vi='vim'
alias b='cd ..'
alias f='open .'
alias o='open'
alias ll='ls -l'
alias svim='sudo -E vim'
alias bp='vim ~/.bash_profile'
alias sbp='source ~/.bash_profile'
alias ba='vim ~/.bash_aliases'
alias d='cd ~/developer'
alias D='cd ~/Desktop'

# -------------------- Mac --------------------
alias show_files='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hide_files='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias key_repeat='defaults write -g ApplePressAndHoldEnabled -bool false'
alias no_key_repeat='defaults write -g ApplePressAndHoldEnabled -bool true'
alias flush_dns='sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder'

# -------------------- Nginx --------------------
alias restart_nginx='sudo /etc/init.d/nginx restart'

# -------------------- Git --------------------
alias gs='git status'
alias ga='git add'
alias gb='git branch'
alias gaa='git add .'
alias gcm='git commit -m'
alias gc='git commit'
alias gca='git commit --amend'
alias gcane='git commit --amend --no-edit'
alias gp='git push'
alias gprom='git pull --rebase origin master'
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gco='git checkout'
alias gcom='git checkout master'
alias gr='git-review'
alias gri='git rebase -i head~20'
alias grc='git rebase --continue'
alias gcob='git checkout -b'
alias gd='git diff HEAD'

# -------------------- JS --------------------
alias try='npx trymodule'

# -------------------- PHP --------------------
alias php='php -dzend_extension=xdebug.so'
alias phpunit='php $(which phpunit)'
alias spec='phpspec'
alias specr='phpspec run'
alias specd='phpspec desc'
alias art='php artisan'

# -------------------- Python --------------------
alias venv="source env/bin/activate"

# -------------------- 1806 --------------------
alias web='cd ~/developer/1806/web'
alias ios='cd ~/developer/1806/ios'
alias vm="ssh vagrant@127.0.0.1 -p 2222"
alias forge="ssh forge@107.170.204.73"

# -------------------- Thumbtack --------------------
alias tts='ttsync --source ~/Thumbtack/website/ --destination farnsworth-dcapo.dev-internal:/srv/thumbtack/code/'
alias ttsf='MULTIPROCESS_GULP=true CACHED_JS_BUILD_GULP=true ttsync --source ~/Thumbtack/website/ --destination farnsworth-dcapo.dev-internal:/srv/thumbtack/code/'
alias ttsnm='babel-node ./node_modules/.bin/ttsync --config-file .get-tt-sync-config.js --no-make'
alias wp='node --max_old_space_size=4096 ./node_modules/.bin/webpack --config _build/webpack.config.js --watch'
alias w='cd ~/Thumbtack/website'
alias wro='cd ~/Thumbtack/website-read-only'
alias t='cd ~/Thumbtack/website/thumbprint'
alias tp='cd ~/Thumbtack/website/thumbprint'
alias farnsworth='ssh farnsworth-dcapo.dev-internal'
alias dev='ssh -R 9000:localhost:9000 farnsworth-dcapo.dev-internal'
alias yarnt="cd ~/Thumbtack/website/thumbprint && yarn test: notify"
alias yarnto="cd ~/Thumbtack/website/thumbprint && yarn test-one: notify"
alias yarntow="cd ~/Thumbtack/website/thumbprint && yarn test-one --watch"
alias yarntowi="cd ~/Thumbtack/website/thumbprint && yarn test-one --watch --inspect-brk"
alias yarntowsp="cd ~/Thumbtack/website/thumbprint && yarn test-one --watch pages/service-page-cobalt/service-page.test.tsx"
alias yarntowisp="cd ~/Thumbtack/website/thumbprint && yarn test-one --watch --inspect-brk pages/service-page-cobalt/service-page.test.tsx"
alias yarntowrf="cd ~/Thumbtack/website/thumbprint && yarn test-one --watch components/cobalt-request-flow/components/request-flow.test.jsx"
alias yarnl="cd ~/Thumbtack/website/thumbprint && yarn lint; notify"
alias yarns="cd ~/Thumbtack/website/thumbprint && yarn storybook"
alias yarnrbw="cd ~/Thumbtack/website/thumbprint && yarn renderer:build:watch"
alias ygm="yoda good-morning; notify"
alias yrw="yoda restart website --sync"
alias ys="yoda status"
alias ttaws="~/Thumbtack/get-aws-token.sh | tt-aws-session-credentials"
alias stubql="cd ~/Thumbtack/go/src/github.com/thumbtack/go/cobalt/stubql && SCHEMA_LOCATION=../schema yarn stubql:local"
alias yl="yoda logs"
alias ylw="yoda logs website -i 'DEBUG:'"
alias cdgo="cd ~/Thumbtack/go/src/github.com/thumbtack/go"
alias cobalt="cd ~/Thumbtack/go/src/github.com/thumbtack/go/cobalt"
alias cobalt-watcher="bash <(git archive --remote=ssh://gerrit.internal.aws:29418/tools HEAD users/trotter/cobalt-watcher/cobalt-watcher | tar -xO)"
alias ola="okta-login admin"
