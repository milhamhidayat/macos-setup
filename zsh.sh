# Show folder in terminal header
if [ $ITERM_SESSION_ID ]; then
  # Set tab title to current directory and set window title to full path
  # the $PROMPT_COMMAND environment variable is executed every time a command is run
  export PROMPT_COMMAND='echo -ne "\033]1;${PWD##*/}\007" && echo -ne "\033]2;${PWD}\007"; ':"$PROMPT_COMMAND";
fi

# iTerm
bindkey "\e\e[D" backward-word
bindkey "\e\e[C" forward-word
bindkey "^[a" beginning-of-line
bindkey "^[e" end-of-line

# Golang
go_test() {
  go test $* | sed ''/PASS/s//$(printf "\033[32mPASS\033[0m")/'' | sed ''/FAIL/s//$(printf "\033[31mFAIL\033[0m")/'' | sed ''/FAIL/s//$(printf "\033[31mFAIL\033[0m")/'' | GREP_COLOR="01;33" egrep --color=always '\s*[a-zA-Z0-9\-_.]+[:][0-9]+[:]|^'
}

go_cover() {
  local t=$(mktemp -t cover)
  go test $COVERFLAGS -coverprofile=$t $@ && go tool cover -func=$t && unlink $t
}

export GOPATH=$HOME/go-workspace 
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin



# edit .zshrc
alias edit_zsh="code-insiders ~/.zshrc"
alias re_zsh="source ~/.zshrc"

# react cli
alias cra="npx create-react-app"

# git ignore cli
alias gi="npx add-gitignore"

# go workspace
alias gowork="cd $HOME/go-workspace/src"

# project workspace
alias project="cd $HOME/project"

# get ip address
alias ip="ipconfig getifaddr en0"

# get port
alias ap="lsof -i"

# default editor
export EDITOR="code -w"

alias ~="cd ~"
alias .="cd .."
alias ..="cd ../.."
alias ...="cd ../../.."
alias ....="cd ../../../.."
alias cd..="cd .." # Typo addressed.

# create folder and go inside
alias mkcd='foo(){ mkdir -p "$1"; cd "$1" }; foo '

# visual studio code
alias vsc="code ."

# visual studio code insider
alias vsci="code-insiders ."

# visual studio codium
alias vsco="vscodium ."

# go run main.go
alias grmg="go run main.go"

# tree
alias tls="tree -L 1"

# git alias
alias ga="git add"
alias gaa="git add ."

alias gb="git branch"

alias gbd="git branch -D"
alias gbod="git push origin -d"

alias gc="git commit"
alias gcm="git commit -m"

alias gl="git log"

alias gpo="git push origin"
alias gpod="git push origin develop"
alias gpos="git push origin staging"
alias gpom="git push origin master"

alias gs="git status"
alias gss="git status -s"

alias gco="git checkout"
alias gcob="git checkout -b"
alias gcof="git checkout -f"
alias gcod="git checkout develop"
alias gcos="git checkout staging"
alias gcom="git checkout master"

alias gplo="git pull"
alias gplod="git pull origin develop"
alias gplos="git pull origin staging"
alias gplom="git pull origin master"

# postgres
alias pg_start="launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"
alias pg_stop="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"

# maria db
alias mdb_start="mysql.server start"
alias mdb_stop="mysql.server stop"